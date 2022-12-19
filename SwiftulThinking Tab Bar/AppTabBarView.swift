//
//  AppTabBarView.swift
//  SwiftulThinking Tab Bar
//
//  Created by Jason Cheladyn on 2022/12/16.
//

import SwiftUI

struct AppTabBarView: View {
    
    @State private var selection: String = ""
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: .home, selection: $tabSelection)
            Color.red
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            Color.green
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    static let tabs: [TabBarItem] = [.home, .favorites, .profile]
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.orange
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
        }
    }
}
