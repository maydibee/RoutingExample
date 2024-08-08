//
//  MakeDonationViewModel.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 02/08/24.
//

import SwiftUI


class MakeDonationViewModel: ObservableObject {
    
    private let router: MakeDonationRouter
    
    @Published var user: User
    
    
    init(router: MakeDonationRouter, user: User) {
        self.router = router
        self.user = user
    }
    
    func navigateToPaymentPage() {
        router.routeToPaymentPage()
    }
}

// MARK: - MakeDonationViewModel mock for preview

extension MakeDonationViewModel {
    static let mock: MakeDonationViewModel = .init(router: MakeDonationRouter.mock, user: MakeDonationRouter.mock.user)
}
