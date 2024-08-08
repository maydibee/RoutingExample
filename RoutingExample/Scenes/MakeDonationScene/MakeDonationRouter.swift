//
//  MakeDonationRouter.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 05/08/24.
//

import SwiftUI


class MakeDonationRouter {

    private let rootCoordinator: NavigationCoordinator
    
    var user: User
    
    init(rootCoordinator: NavigationCoordinator, user: User) {
        self.rootCoordinator = rootCoordinator
        self.user = user
    }
    
    func routeToPaymentPage() {
        let paymentRouter = PaymentPageRouter(rootCoordinator: self.rootCoordinator, user: self.user)
        rootCoordinator.push(paymentRouter)
    }
}

// MARK: - ViewFactory implementation

extension MakeDonationRouter: Routable {
    
    func makeView() -> AnyView {
        let viewModel = MakeDonationViewModel(router: self, user: self.user)
        let view = MakeDonationView(viewModel: viewModel)
        return AnyView(view)
    }
}

// MARK: - Hashable implementation

extension MakeDonationRouter {
    static func == (lhs: MakeDonationRouter, rhs: MakeDonationRouter) -> Bool {
        lhs.user.uid == rhs.user.uid
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.user.uid)
    }
}

// MARK: - Router mock for preview

extension MakeDonationRouter {
    static let mock: MakeDonationRouter = .init(rootCoordinator: AppRouter(), user: Datasource.mockUser)
}

