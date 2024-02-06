//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 5.02.2024.
//

import SwiftUI

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
        }
    }
}

#Preview {
    ListingDetailView()
}
