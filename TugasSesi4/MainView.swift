//
//  MainView.swift
//  TugasSesi4
//
//  Created by ihsan.satriawan on 02/12/22.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    // @State private var selection: Int = 0
    @State private var selectedTab: Tabs = .browse
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
//                ArticleListView()
                CoffeeshopListView()
                    .listStyle(.plain)
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Browse")
                    }
                    .tag(Tabs.browse)
                
                
                VStack {
                    Text("Watch".uppercased())
                        .font(.system(.largeTitle, design: .rounded))
                    Button {
                        selectedTab = Tabs.profile
                    } label: {
                        Text("Show Profile")
                            .font(.system(.headline, design: .rounded))
                            .padding()
                            .foregroundColor(.white)
                            .background(.indigo)
                            .cornerRadius(10)
                            .padding()
                    }
                    
                } //: VSTACK
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Watch")
                }
                .tag(Tabs.watch)
                
                Text("Loans".uppercased())
                    .font(.system(.largeTitle, design: .rounded))
                    .tabItem {
                        Image(systemName: "rectangle.and.text.magnifyingglass")
                        Text("Loans")
                    }
                    .tag(Tabs.loans)
                
                Text("Profile".uppercased())
                    .font(.system(.largeTitle, design: .rounded))
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                    .tag(Tabs.profile)
                
            } //: TABVIEW
            .tint(.purple)
            .navigationTitle(selectedTab.rawValue.capitalized)
            
        } //: NAVIGATION
        
    }
}

// MARK: - PREVIEW
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

// MARK: - ENUM
enum Tabs: String {
    case browse
    case watch
    case loans
    case profile
}
