//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 5.02.2024.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        ScrollView {
            // imagess
            ListingImageCarouselView()
                .frame(height: 320)
                
            VStack(alignment: .leading, spacing: 8) {
                Text("Cozy Villa")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.53")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // Host Info View
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire villa hosted by Annie Silver")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack (spacing: 2){
                        Text("4 Guests -")
                        Text("3 Bedrooms -")
                        Text("4 Beds -")
                        Text("2 Baths")
                        
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("male-profile-photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // Listing features
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2) {
                    feature in HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            
                            Text("Superhosts are experience, highly rated hosts who are commited to providing great stars for guests")
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
                        ForEach(1..<5) {
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
                
                ForEach(0 ..< 5) {
                    feature in HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("Wifi")
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
    }
}

#Preview {
    ListingDetailView()
}
