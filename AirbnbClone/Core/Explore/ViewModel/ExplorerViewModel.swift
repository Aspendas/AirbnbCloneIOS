//
//  ExplorerViewModel.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 10.02.2024.
//

import Foundation

class ExplorerViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings()}
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: FAiled to fetch listings with error: \(error.localizedDescription)")
        }
    }
}
