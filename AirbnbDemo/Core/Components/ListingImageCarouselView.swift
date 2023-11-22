//
//  ListingImageCarouselView.swift
//  AirbnbDemo
//
//  Created by SeanLiu-Mac on 2023/11/17.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
        "image-5"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id:\.self) { image in
                Image(image)
                    .resizable()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
