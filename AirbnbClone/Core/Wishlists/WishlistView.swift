//
//  WishlistView.swift
//  AirbnbClone
//
//  Created by Umut Y. Çalışkan on 9.02.2024.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
             
                VStack(alignment: .leading, spacing: 4) {
                    Text("Login to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                }
                .padding()
                
                Button {
                    print("login")
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
