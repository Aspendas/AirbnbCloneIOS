//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 10.02.2024.
//

import Foundation

class DeveloperPreview {
    var listing: [Listing] = [
        .init(
            id: NSUUID() .uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName:"John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing-4", "listing-1", "listing-2", "listing-3"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID() .uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName:"Amy Winehouse",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 3,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 763,
            latitude: 25.7650,
            longitude: -80.1936,
            imageURLs: ["listing-1", "listing-2","listing-3", "listing-4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Beautiful Miami apartment in downtown Brickell",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Doe",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            numberOfBeds: 2,
            pricePerNight: 150,
            latitude: 42.3601,
            longitude: -71.0589,
            imageURLs: ["listing-2","listing-3", "listing-4", "listing-1"],
            address: "456 Forest Lane",
            city: "Aspen",
            state: "Colorado",
            title: "Cozy Cabin Retreat in the Woods",
            rating: 4.75,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Jane Smith",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 6,
            numberOfBeds: 5,
            pricePerNight: 1200,
            latitude: 33.6705,
            longitude: -78.9720,
            imageURLs: ["listing-3", "listing-4", "listing-1", "listing-2"],
            address: "789 Ocean Blvd",
            city: "Myrtle Beach",
            state: "South Carolina",
            title: "Luxurious Beachfront Condo with Spectacular Views",
            rating: 4.95,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .house
        )

        
    ]
    
}
