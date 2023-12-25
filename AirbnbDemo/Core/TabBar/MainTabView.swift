//
//  MainTabView.swift
//  AirbnbDemo
//
//  Created by SeanLiu-Mac on 2023/12/14.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WhishListView()
                .tabItem {  Label("WishList", systemImage: "heart") }
            ProfileView()
                .tabItem {  Label("Profile", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
