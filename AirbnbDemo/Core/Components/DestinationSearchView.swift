//
//  DestinationSearchView.swift
//  AirbnbDemo
//
//  Created by SeanLiu-Mac on 2023/11/20.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectionOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack {
            
            Button {
                withAnimation(.snappy) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            // location view
            
            VStack (alignment: .leading) {
                if selectionOption == .location {
                    Text("Where to?")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search Destation", text: $destination)
                            .font(.subheadline)
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray4))
                    )
                } else {
                    CollapsedPickerView(title: "Where", description: "Add destation")
                }
            }
            .padding()
            .frame(height: selectionOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) { selectionOption = .location }
            }
            
            // date view
            
            VStack {
                if selectionOption == .dates {
                    HStack {
                        Text("show select dates")
                        Spacer()
                    }
                } else {
                    // date selection view
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .padding()
            .frame(height: selectionOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) { selectionOption = .dates }
            }
            
            // guest view
            
            VStack {
                if selectionOption == .guests {
                    HStack {
                        Text("show select guest")
                        Spacer()
                    }
                } else {
                    // num guest view
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .padding()
            .frame(height: selectionOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .onTapGesture {
                withAnimation(.snappy) { selectionOption = .guests }
            }

        }
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}
