//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 4.02.2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExplorerViewModel(service: ExploreService())
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }.padding()
                }
                .navigationDestination(for: Listing.self) {listing in
                    ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
