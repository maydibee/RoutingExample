//
//  PaymentPageRouter.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 08/08/24.
//

import SwiftUI

class PaymentPageRouter {

    private let rootCoordinator: NavigationCoordinator
    
    var user: User
    
    init(rootCoordinator: NavigationCoordinator, user: User) {
        self.rootCoordinator = rootCoordinator
        self.user = user
    }
    
    func routeToHomePage() {
        rootCoordinator.popToRoot()
    }
}

// MARK: - ViewFactory implementation

extension PaymentPageRouter: Routable {

    func makeView() -> AnyView {
        let viewModel = PaymentPageViewModel(router: self, user: self.user)
        let view = PaymentPageView(viewModel: viewModel)
        return AnyView(view)
    }
}

// MARK: - Hashable implementation

extension PaymentPageRouter {

    static func == (lhs: PaymentPageRouter, rhs: PaymentPageRouter) -> Bool {
        lhs.user.uid == rhs.user.uid
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.user.uid)
    }
}

// MARK: - Router mock for preview

extension PaymentPageRouter {
    static let mock: PaymentPageRouter = .init(rootCoordinator: AppRouter(), user: Datasource.mockUser)
}

