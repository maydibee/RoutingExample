//
//  PaymentPageView.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 08/08/24.
//

import SwiftUI


struct PaymentPageView: View {
    
    @StateObject var viewModel: PaymentPageViewModel
    
    var body: some View {
        VStack {
            Text("Make a payment")
                .font(.title)
                .fontWeight(.bold)
            Text("Your balance: \(viewModel.user.balance)")
                .font(.title2)
            Button(action: {
                viewModel.navigateToHomePage()
            }) {
                Text("Go to Home Page")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .navigationTitle("Payment Page")
    }
}

// MARK: - Preview

#Preview("PaymentPageView") {
    PaymentPageView(viewModel: .mock)
}
