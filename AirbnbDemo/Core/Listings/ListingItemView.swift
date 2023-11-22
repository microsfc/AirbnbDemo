//
//  ListingItemView.swift
//  AirbnbDemo
//
//  Created by SeanLiu-Mac on 2023/11/17.
//

import SwiftUI

var images = [
    "image-1",
    "image-2",
    "image-3",
    "image-4",
    "image-5"
]

struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // listing details
            
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("ngiht")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // rating
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundColor(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
