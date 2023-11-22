//
//  ListingDetailView.swift
//  AirbnbDemo
//
//  Created by SeanLiu-Mac on 2023/11/17.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var images = [
        "image-1",
        "image-2",
        "image-3",
        "image-4",
        "image-5"
    ]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack (alignment: .topLeading){
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width:32, height: 32)
                        }
                        .padding(32)
                }
            }
            VStack(alignment: .leading, spacing: 8) {
                Text("Good Wave")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("Wushi labor")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // surfer info view
            HStack {
                VStack(alignment: .leading, spacing:4) {
                    Text("Sufer name is Sean Liu")
                        .font(.headline)
                        .frame(width:250, alignment: .leading)
                    
                    HStack(spacing: 2) {
                        Text("level: advance -")
                        Text("gender: male -")
                        Text("size: leg to chest")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("profile-photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            // listing features
            
            VStack (alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        VStack(alignment: .leading) {
                            Text("Super Surfer")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Super Surfer who live in Taipei, Taiwan and he really want to surf in Thailand and retire in Thailand")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .padding()
            
            Divider()
            
            //surf spot view
            VStack (alignment: .leading, spacing: 16) {
                Text("Where you'll surf")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators:false) {
                    HStack(spacing: 16) {
                        ForEach(1 ..< 5) { surfSpot in
                            VStack {
                                Image(systemName: "water.waves")
                                Text("Surf Spot \(surfSpot)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // listing stuff
            VStack(alignment: .leading, spacing: 16) {
                Text("surf spot offer")
                    .font(.headline)
                
                ForEach(0 ..< 5) { feature in
                    HStack {
                        Image(systemName: "shower")
                            .frame(width: 32)
                        
                        Text("Shower")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            //Map view
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack (alignment: .leading) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Summer")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        
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
    ListingDetailView()
}
