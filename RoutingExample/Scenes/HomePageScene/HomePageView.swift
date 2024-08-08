//
//  HomePageView.swift
//  RoutingExample
//
//  Created by Michael Skuratau on 02/08/24.
//

import SwiftUI


struct HomePageView: View {
    
    @StateObject var viewModel: HomePageViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "dollarsign.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.yellow)
                .frame(width: 50)
            HStack(alignment: .firstTextBaseline) {
                Text("Donated:")
                    .font(.title)
                    .fontWeight(.bold)
                Text("\(viewModel.user.donatedValue)")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            Button(action: {
                self.viewModel.navigateToMakeDonationPage()
            }, label: {
                Text("Donate more")
            })
        }
        .navigationTitle("Home Page")
    }

}

// MARK: - Preview

#Preview("HomePageView") {
    HomePageView(viewModel: .mock)
}
