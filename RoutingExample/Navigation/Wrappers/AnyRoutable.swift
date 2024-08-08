//
//  AnyRoutable.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 07/08/24.
//

import SwiftUI

// MARK: - Hashable wrapper for Routable

struct AnyRoutable: Hashable {
    private let _makeView: () -> AnyView
    private let _hash: () -> Int
    private let _equals: (Any) -> Bool

    init<T: Routable>(_ router: T) {
        _makeView = router.makeView
        _hash = { router.hashValue }
        _equals = { other in
            guard let otherRouter = other as? T else { return false }
            return router == otherRouter
        }
    }

    func makeView() -> AnyView {
        _makeView()
    }

    static func == (lhs: AnyRoutable, rhs: AnyRoutable) -> Bool {
        lhs._equals(rhs._base)
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(_hash())
    }

    private var _base: Any {
        _makeView as Any
    }
}

