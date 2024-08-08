//
//  MakeDonationView.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 02/08/24.
//

import SwiftUI


struct MakeDonationView: View {
    
    @StateObject var viewModel: MakeDonationViewModel

    var body: some View {
        VStack {
            Text("Hey, \(viewModel.user.name)")
            Text("Let's donate")
                .font(.title)
                .fontWeight(.bold)
            Button(action: {
                self.viewModel.navigateToPaymentPage()
            }) {
                Text("Proceed to Payment")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
            }
        }
        .navigationTitle("Make donation")
    }
}

// MARK: - Preview

#Preview("MakeDonationView") {
    MakeDonationView(viewModel: .mock)
}
