//
//  ExploreService.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 10.02.2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
