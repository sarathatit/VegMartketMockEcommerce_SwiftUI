//
//  ContentView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 18/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State private var currentTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @Namespace var animation
    var body: some View {
        TabView(selection: $currentTab) {
            HomeView()
            Text("Search View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Search)
            Text("Notification View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Notification)
            Text("Cart View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Cart)
            Text("Profile View")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background()
                .tag(Tab.Profile)
        }
        .overlay(
            HStack(spacing: 0){
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    tabButton(tab: tab)
                }
                .padding(.vertical)
                .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                .background(Color("secondary"))
            }
            ,
            alignment: .bottom
        ).ignoresSafeArea(.all, edges: .bottom)
    }
    
    func tabButton(tab: Tab) -> some View {
        GeometryReader(content: { proxy in
            Button(action: {
                withAnimation(.spring())   {
                    currentTab = tab
                }
            }, label: {
                VStack(spacing: 0) {
                    Image(systemName: currentTab == tab ? tab.imageName + ".fill" : tab.imageName)
                        .resizable()
                        .foregroundStyle(Color("primary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MeterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: tab, in: animation)
                                    Text(tab.rawValue)
                                        .foregroundStyle(Color("primary"))
                                        .font(.footnote)
                                        .padding(.top, 50)
                                }
                            }).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            })
        }).frame(height: 25)
    }
}

#Preview {
    ContentView()
        .environmentObject(CartManager())
}

enum Tab: String, CaseIterable {
    case Home = "Home"
    case Search = "Search"
    case Notification = "Notification"
    case Cart = "Cart"
    case Profile = "Profile"
    
    var imageName: String {
        switch self {
        case .Home:
            return "house"
        case .Search:
            return "magnifyingglass.circle"
        case .Notification:
            return "bell"
        case .Cart:
            return "bag"
        case .Profile:
            return "person"
        }
    }
}

struct MeterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
