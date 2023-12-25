//
//  WhishListView.swift
//  AirbnbDemo
//
//  Created by SeanLiu-Mac on 2023/12/14.
//

import SwiftUI

struct WhishListView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit your wishlists once you've loggin")
                        .font(.footnote)
                }
                
                Button {
                    print("login")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
            }
        }
        .navigationTitle("WhishLists")
    }
}

#Preview {
    WhishListView()
}
