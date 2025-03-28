//
//  UserWalletEncryptionKeyStorage.swift
//  Tangem
//
//

import Foundation
import CryptoKit
import LocalAuthentication
import TangemSdk

class UserWalletEncryptionKeyStorage {
    private let secureStorage = SecureStorage()
    private let biometricsStorage = BiometricsStorage()
    private let userWalletIdsStorageKey = "user_wallet_ids"

    func fetch(completion: @escaping (Result<[UserWalletId: UserWalletEncryptionKey], Error>) -> Void) {
        do {
            let userWalletIds = try userWalletIds()

            let reason = Localization.biometryTouchIdReason
            BiometricsUtil.requestAccess(localizedReason: reason) { [weak self] result in
                guard let self else { return }

                switch result {
                case .failure(let error):
                    completion(.failure(error))
                case .success(let context):
                    do {
                        var keys: [UserWalletId: UserWalletEncryptionKey] = [:]

                        for userWalletId in userWalletIds {
                            let storageKey = encryptionKeyStorageKey(for: userWalletId)
                            let encryptionKeyData = try biometricsStorage.get(storageKey, context: context)
                            if let encryptionKeyData = encryptionKeyData {
                                keys[userWalletId] = UserWalletEncryptionKey(symmetricKey: SymmetricKey(data: encryptionKeyData))
                            }
                        }

                        completion(.success(keys))
                    } catch {
                        AppLog.shared.error(error)
                        completion(.failure(error))
                    }
                }
            }
        } catch {
            completion(.failure(error))
        }
    }

    func add(_ userWalletId: UserWalletId, encryptionKey: UserWalletEncryptionKey) {
        do {
            let userWalletIds = try userWalletIds()
            if userWalletIds.contains(userWalletId) {
                return
            }

            try addUserWalletId(userWalletId)

            let encryptionKeyData = encryptionKey.symmetricKey.dataRepresentationWithHexConversion
            try biometricsStorage.store(encryptionKeyData, forKey: encryptionKeyStorageKey(for: userWalletId))
        } catch {
            AppLog.shared.debug("Failed to add UserWallet ID to the list")
            AppLog.shared.error(error)
            return
        }
    }

    func delete(_ userWalletId: UserWalletId) {
        do {
            try deleteUserWalletId(userWalletId)
            try biometricsStorage.delete(encryptionKeyStorageKey(for: userWalletId))
        } catch {
            AppLog.shared.debug("Failed to delete user wallet list encryption key")
            AppLog.shared.error(error)
        }
    }

    func refreshEncryptionKey(_ key: UserWalletEncryptionKey, for userWalletId: UserWalletId) {
        do {
            try biometricsStorage.delete(encryptionKeyStorageKey(for: userWalletId))
            let encryptionKeyData = key.symmetricKey.dataRepresentationWithHexConversion
            try biometricsStorage.store(encryptionKeyData, forKey: encryptionKeyStorageKey(for: userWalletId))
        } catch {
            AppLog.shared.debug("Failed to refresh an encryption key")
            AppLog.shared.error(error)
        }
    }

    func clear() {
        do {
            let userWalletIds = try userWalletIds()
            try saveUserWalletIds([])
            for userWalletId in userWalletIds {
                try biometricsStorage.delete(encryptionKeyStorageKey(for: userWalletId))
            }
        } catch {
            AppLog.shared.debug("Failed to clear user wallet encryption keys")
            AppLog.shared.error(error)
        }
    }

    // MARK: - Saving the list of UserWallet IDs

    private func encryptionKeyStorageKey(for userWalletId: UserWalletId) -> String {
        "user_wallet_encryption_key_\(userWalletId.stringValue.lowercased())"
    }

    private func addUserWalletId(_ userWalletId: UserWalletId) throws {
        var ids = try userWalletIds()
        ids.insert(userWalletId)
        try saveUserWalletIds(ids)
    }

    private func deleteUserWalletId(_ userWalletId: UserWalletId) throws {
        var ids = try userWalletIds()
        ids.remove(userWalletId)
        try saveUserWalletIds(ids)
    }

    private func userWalletIds() throws -> Set<UserWalletId> {
        guard let data = try secureStorage.get(userWalletIdsStorageKey) else {
            return []
        }

        let decoded = try JSONDecoder().decode(Set<Data>.self, from: data)
        return Set(decoded.map { UserWalletId(value: $0) })
    }

    private func saveUserWalletIds(_ userWalletIds: Set<UserWalletId>) throws {
        if userWalletIds.isEmpty {
            try secureStorage.delete(userWalletIdsStorageKey)
        } else {
            let data = try JSONEncoder().encode(userWalletIds.map { $0.value })
            try secureStorage.store(data, forKey: userWalletIdsStorageKey)
        }
    }
}
