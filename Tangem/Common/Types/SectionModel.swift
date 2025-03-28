//
//  SectionModel.swift
//  Tangem
//
//

import Foundation

/// Represents a generic section in a list.
struct SectionModel<Model, ItemModel> {
    var model: Model
    var items: [ItemModel]
}

// MARK: - Equatable protocol conformance

extension SectionModel: Equatable where Model: Equatable, ItemModel: Equatable {}

// MARK: - Hashable protocol conformance

extension SectionModel: Hashable where Model: Hashable, ItemModel: Hashable {}

// MARK: - Identifiable protocol conformance

extension SectionModel: Identifiable where Model: Identifiable {
    var id: Model.ID { model.id }
}
