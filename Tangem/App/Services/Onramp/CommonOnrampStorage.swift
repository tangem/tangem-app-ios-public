//
//  CommonOnrampStorage.swift
//  TangemApp
//
//

import TangemExpress
import TangemFoundation

struct CommonOnrampStorage: OnrampStorage {
    @Injected(\.persistentStorage) private var storage: PersistentStorageProtocol

    func save(preference: OnrampUserPreference) {
        do {
            try storage.store(value: preference, for: .onrampPreference)
        } catch {
            AppLog.shared.debug("[CommonOnrampStorage] Failed to save changes in storage. Reason: \(error)")
        }
    }

    func preference() -> OnrampUserPreference? {
        do {
            return try storage.value(for: .onrampPreference)
        } catch {
            AppLog.shared.debug("[CommonOnrampStorage] Couldn't get the staking transactions list from the storage with error \(error)")
            return nil
        }
    }
}
