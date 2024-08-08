//
//  PaymentPageViewModel.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 08/08/24.
//

import SwiftUI

class PaymentPageViewModel: ObservableObject {
    
    private let router: PaymentPageRouter
    
    @Published var user: User
    

    init(router: PaymentPageRouter, user: User) {
        self.router = router
        self.user = user
    }
    
    func navigateToHomePage() {
        router.routeToHomePage()
    }
}

// MARK: - PaymentPageViewModel mock for preview

extension PaymentPageViewModel {
    static let mock: PaymentPageViewModel = .init(router: PaymentPageRouter.mock, user: PaymentPageRouter.mock.user)
}


