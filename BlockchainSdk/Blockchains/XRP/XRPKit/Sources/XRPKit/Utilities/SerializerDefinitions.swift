//
//  SerializerDefinitions.swift
//  XRPKit
//
//

import Foundation

let serializerDefinitions = """
{
"TYPES": {
"Validation": 10003,
"Done": -1,
"Hash128": 4,
"Blob": 7,
"AccountID": 8,
"Amount": 6,
"Hash256": 5,
"UInt8": 16,
"Vector256": 19,
"STObject": 14,
"Unknown": -2,
"Transaction": 10001,
"Hash160": 17,
"PathSet": 18,
"LedgerEntry": 10002,
"UInt16": 1,
"NotPresent": 0,
"UInt64": 3,
"UInt32": 2,
"STArray": 15
},
"LEDGER_ENTRY_TYPES": {
"Any": -3,
"Child": -2,
"Invalid": -1,
"AccountRoot": 97,
"DirectoryNode": 100,
"RippleState": 114,
"Ticket": 84,
"SignerList": 83,
"Offer": 111,
"LedgerHashes": 104,
"Amendments": 102,
"FeeSettings": 115,
"Escrow": 117,
"PayChannel": 120,
"DepositPreauth": 112,
"Check": 67,
"Nickname": 110,
"Contract": 99,
"GeneratorMap": 103
},
"FIELDS": [
[
"Generic",
{
"nth": 0,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Unknown"
}
],
[
"Invalid",
{
"nth": -1,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Unknown"
}
],
[
"LedgerEntryType",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt16"
}
],
[
"TransactionType",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt16"
}
],
[
"SignerWeight",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt16"
}
],
[
"Flags",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"SourceTag",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"Sequence",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"PreviousTxnLgrSeq",
{
"nth": 5,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"LedgerSequence",
{
"nth": 6,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"CloseTime",
{
"nth": 7,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"ParentCloseTime",
{
"nth": 8,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"SigningTime",
{
"nth": 9,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"Expiration",
{
"nth": 10,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"TransferRate",
{
"nth": 11,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"WalletSize",
{
"nth": 12,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"OwnerCount",
{
"nth": 13,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"DestinationTag",
{
"nth": 14,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"HighQualityIn",
{
"nth": 16,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"HighQualityOut",
{
"nth": 17,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"LowQualityIn",
{
"nth": 18,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"LowQualityOut",
{
"nth": 19,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"QualityIn",
{
"nth": 20,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"QualityOut",
{
"nth": 21,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"StampEscrow",
{
"nth": 22,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"BondAmount",
{
"nth": 23,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"LoadFee",
{
"nth": 24,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"OfferSequence",
{
"nth": 25,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"FirstLedgerSequence",
{
"nth": 26,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"LastLedgerSequence",
{
"nth": 27,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"TransactionIndex",
{
"nth": 28,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"OperationLimit",
{
"nth": 29,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"ReferenceFeeUnits",
{
"nth": 30,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"ReserveBase",
{
"nth": 31,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"ReserveIncrement",
{
"nth": 32,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"SetFlag",
{
"nth": 33,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"ClearFlag",
{
"nth": 34,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"SignerQuorum",
{
"nth": 35,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"CancelAfter",
{
"nth": 36,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"FinishAfter",
{
"nth": 37,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"IndexNext",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"IndexPrevious",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"BookNode",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"OwnerNode",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"BaseFee",
{
"nth": 5,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"ExchangeRate",
{
"nth": 6,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"LowNode",
{
"nth": 7,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"HighNode",
{
"nth": 8,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
],
[
"EmailHash",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash128"
}
],
[
"LedgerHash",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"ParentHash",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"TransactionHash",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"AccountHash",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"PreviousTxnID",
{
"nth": 5,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"LedgerIndex",
{
"nth": 6,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"WalletLocator",
{
"nth": 7,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"RootIndex",
{
"nth": 8,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"AccountTxnID",
{
"nth": 9,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"BookDirectory",
{
"nth": 16,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"InvoiceID",
{
"nth": 17,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"Nickname",
{
"nth": 18,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"Amendment",
{
"nth": 19,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"TicketID",
{
"nth": 20,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"Digest",
{
"nth": 21,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"hash",
{
"nth": 257,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Hash256"
}
],
[
"index",
{
"nth": 258,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Hash256"
}
],
[
"Amount",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"Balance",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"LimitAmount",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"TakerPays",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"TakerGets",
{
"nth": 5,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"LowLimit",
{
"nth": 6,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"HighLimit",
{
"nth": 7,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"Fee",
{
"nth": 8,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"SendMax",
{
"nth": 9,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"DeliverMin",
{
"nth": 10,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"MinimumOffer",
{
"nth": 16,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"RippleEscrow",
{
"nth": 17,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"DeliveredAmount",
{
"nth": 18,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Amount"
}
],
[
"taker_gets_funded",
{
"nth": 258,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Amount"
}
],
[
"taker_pays_funded",
{
"nth": 259,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Amount"
}
],
[
"PublicKey",
{
"nth": 1,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"MessageKey",
{
"nth": 2,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"SigningPubKey",
{
"nth": 3,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"TxnSignature",
{
"nth": 4,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": false,
"type": "Blob"
}
],
[
"Generator",
{
"nth": 5,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"Signature",
{
"nth": 6,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": false,
"type": "Blob"
}
],
[
"Domain",
{
"nth": 7,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"FundCode",
{
"nth": 8,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"RemoveCode",
{
"nth": 9,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"ExpireCode",
{
"nth": 10,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"CreateCode",
{
"nth": 11,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"MemoType",
{
"nth": 12,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"MemoData",
{
"nth": 13,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"MemoFormat",
{
"nth": 14,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"Fulfillment",
{
"nth": 16,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"Condition",
{
"nth": 17,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Blob"
}
],
[
"MasterSignature",
{
"nth": 18,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": false,
"type": "Blob"
}
],
[
"Account",
{
"nth": 1,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"Owner",
{
"nth": 2,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"Destination",
{
"nth": 3,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"Issuer",
{
"nth": 4,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"Authorize",
{
"nth": 5,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"Unauthorize",
{
"nth": 6,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"Target",
{
"nth": 7,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"RegularKey",
{
"nth": 8,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "AccountID"
}
],
[
"ObjectEndMarker",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"TransactionMetaData",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"CreatedNode",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"DeletedNode",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"ModifiedNode",
{
"nth": 5,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"PreviousFields",
{
"nth": 6,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"FinalFields",
{
"nth": 7,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"NewFields",
{
"nth": 8,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"TemplateEntry",
{
"nth": 9,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"Memo",
{
"nth": 10,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"SignerEntry",
{
"nth": 11,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"Signer",
{
"nth": 16,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"Majority",
{
"nth": 18,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STObject"
}
],
[
"ArrayEndMarker",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"Signers",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": false,
"type": "STArray"
}
],
[
"SignerEntries",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"Template",
{
"nth": 5,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"Necessary",
{
"nth": 6,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"Sufficient",
{
"nth": 7,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"AffectedNodes",
{
"nth": 8,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"Memos",
{
"nth": 9,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"Majorities",
{
"nth": 16,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "STArray"
}
],
[
"CloseResolution",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt8"
}
],
[
"Method",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt8"
}
],
[
"TransactionResult",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt8"
}
],
[
"TakerPaysCurrency",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash160"
}
],
[
"TakerPaysIssuer",
{
"nth": 2,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash160"
}
],
[
"TakerGetsCurrency",
{
"nth": 3,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash160"
}
],
[
"TakerGetsIssuer",
{
"nth": 4,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash160"
}
],
[
"Paths",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "PathSet"
}
],
[
"Indexes",
{
"nth": 1,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Vector256"
}
],
[
"Hashes",
{
"nth": 2,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Vector256"
}
],
[
"Amendments",
{
"nth": 3,
"isVLEncoded": true,
"isSerialized": true,
"isSigningField": true,
"type": "Vector256"
}
],
[
"Transaction",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Transaction"
}
],
[
"LedgerEntry",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "LedgerEntry"
}
],
[
"Validation",
{
"nth": 1,
"isVLEncoded": false,
"isSerialized": false,
"isSigningField": false,
"type": "Validation"
}
],
[
"SignerListID",
{
"nth": 38,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"SettleDelay",
{
"nth": 39,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt32"
}
],
[
"Channel",
{
"nth": 22,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"ConsensusHash",
{
"nth": 23,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"CheckID",
{
"nth": 24,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "Hash256"
}
],
[
"TickSize",
{
"nth": 16,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt8"
}
],
[
"DestinationNode",
{
"nth": 9,
"isVLEncoded": false,
"isSerialized": true,
"isSigningField": true,
"type": "UInt64"
}
]
],
"TRANSACTION_RESULTS": {
"telNO_DST_PARTIAL": -393,
"temBAD_SRC_ACCOUNT": -281,
"tefPAST_SEQ": -189,
"terNO_ACCOUNT": -96,
"temREDUNDANT": -275,
"tefCREATED": -194,
"temDST_IS_SRC": -279,
"terRETRY": -99,
"temINVALID_FLAG": -276,
"temBAD_SEND_XRP_LIMIT": -288,
"terNO_LINE": -94,
"tefBAD_AUTH": -196,
"temBAD_EXPIRATION": -295,
"temBAD_SEND_XRP_NO_DIRECT": -286,
"temBAD_SEND_XRP_PATHS": -284,
"tefBAD_LEDGER": -195,
"tefNO_AUTH_REQUIRED": -190,
"terOWNERS": -93,
"terLAST": -91,
"terNO_RIPPLE": -90,
"temBAD_FEE": -294,
"terPRE_SEQ": -92,
"tefMASTER_DISABLED": -187,
"temBAD_CURRENCY": -296,
"tefDST_TAG_NEEDED": -193,
"temBAD_SIGNATURE": -282,
"tefFAILURE": -199,
"telBAD_PATH_COUNT": -397,
"temBAD_TRANSFER_RATE": -280,
"tefWRONG_PRIOR": -188,
"telBAD_DOMAIN": -398,
"temBAD_AMOUNT": -298,
"temBAD_AUTH_MASTER": -297,
"temBAD_LIMIT": -292,
"temBAD_ISSUER": -293,
"telBAD_PUBLIC_KEY": -396,
"tefBAD_ADD_AUTH": -197,
"temBAD_OFFER": -291,
"temBAD_SEND_XRP_PARTIAL": -285,
"temDST_NEEDED": -278,
"tefALREADY": -198,
"temUNCERTAIN": -272,
"telLOCAL_ERROR": -399,
"temREDUNDANT_SEND_MAX": -274,
"tefINTERNAL": -191,
"temBAD_PATH_LOOP": -289,
"tefEXCEPTION": -192,
"temRIPPLE_EMPTY": -273,
"telINSUF_FEE_P": -394,
"temBAD_SEQUENCE": -283,
"tefMAX_LEDGER": -186,
"terFUNDS_SPENT": -98,
"temBAD_SEND_XRP_MAX": -287,
"telFAILED_PROCESSING": -395,
"terINSUF_FEE_B": -97,
"tesSUCCESS": 0,
"temBAD_PATH": -290,
"temMALFORMED": -299,
"temUNKNOWN": -271,
"temINVALID": -277,
"terNO_AUTH": -95,
"temBAD_TICK_SIZE": -270,

"tecCLAIM": 100,
"tecPATH_PARTIAL": 101,
"tecUNFUNDED_ADD": 102,
"tecUNFUNDED_OFFER": 103,
"tecUNFUNDED_PAYMENT": 104,
"tecFAILED_PROCESSING": 105,
"tecDIR_FULL": 121,
"tecINSUF_RESERVE_LINE": 122,
"tecINSUF_RESERVE_OFFER": 123,
"tecNO_DST": 124,
"tecNO_DST_INSUF_XRP": 125,
"tecNO_LINE_INSUF_RESERVE": 126,
"tecNO_LINE_REDUNDANT": 127,
"tecPATH_DRY": 128,
"tecUNFUNDED": 129,
"tecNO_ALTERNATIVE_KEY": 130,
"tecNO_REGULAR_KEY": 131,
"tecOWNERS": 132,
"tecNO_ISSUER": 133,
"tecNO_AUTH": 134,
"tecNO_LINE": 135,
"tecINSUFF_FEE": 136,
"tecFROZEN": 137,
"tecNO_TARGET": 138,
"tecNO_PERMISSION": 139,
"tecNO_ENTRY": 140,
"tecINSUFFICIENT_RESERVE": 141,
"tecNEED_MASTER_KEY": 142,
"tecDST_TAG_NEEDED": 143,
"tecINTERNAL": 144,
"tecOVERSIZE": 145,
"tecCRYPTOCONDITION_ERROR": 146,
"tecINVARIANT_FAILED": 147,
"tecEXPIRED": 148,
"tecDUPLICATE": 149
},
"TRANSACTION_TYPES": {
"Invalid": -1,
"Payment": 0,
"EscrowCreate": 1,
"EscrowFinish": 2,
"AccountSet": 3,
"EscrowCancel": 4,
"SetRegularKey": 5,
"NickNameSet": 6,
"OfferCreate": 7,
"OfferCancel": 8,
"Contract": 9,
"TicketCreate": 10,
"TicketCancel": 11,
"SignerListSet": 12,
"PaymentChannelCreate": 13,
"PaymentChannelFund": 14,
"PaymentChannelClaim": 15,
"CheckCreate": 16,
"CheckCash": 17,
"CheckCancel": 18,
"DepositPreauth": 19,
"TrustSet": 20,
"EnableAmendment": 100,
"SetFee": 101
}
}
"""
