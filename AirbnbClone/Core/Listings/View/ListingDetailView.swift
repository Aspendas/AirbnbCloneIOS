//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 5.02.2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    
    var body: some View {
        ScrollView {
            // imagess
            ZStack (alignment: .topLeading){
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(36)
                }
            }
                
            VStack(alignment: .leading, spacing: 8) {
                Text("\(listing.title)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("\(listing.rating)")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // Host Info View
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack (spacing: 2){
                        Text("\(listing.numberOfGuests) Guests -")
                        Text("\(listing.numberOfBedrooms) Bedrooms -")
                        Text("\(listing.numberOfBeds) Beds -")
                        Text("\(listing.numberOfBathrooms) Baths")
                        
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("\(listing.ownerImageUrl)")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // Listing features
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(listing.features) {
                    feature in HStack(spacing: 12) {
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading) {
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Text(feature.subTitle)
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // bedrooms view
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(1 ... listing.numberOfBedrooms, id: \.self) {
                            bedroom in HStack{
                                VStack (alignment: .leading){
                                    Image(systemName: "bed.double")
                                    
                                    Text("Bedroom \(bedroom)")
                                        .fontWeight(.semibold)
                                }.padding()
                                Spacer()
                            }
                            .frame(width: 148, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            //listing amenities
            VStack(alignment:.leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(listing.amenities) {
                    amenity in HStack {
                        Image(systemName: amenity.imageName)
                            .frame(width: 32)
                        
                        Text(amenity.title)
                            .font(.footnote)
                        
                        Spacer()
                        
                    }
                }
            }
            .padding()
            
            Divider()
            
            //Map View
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom,72)
        .overlay(alignment: .bottom) {
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack{
                        Text("$\(listing.pricePerNight)")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview.shared.listings[2])
}
