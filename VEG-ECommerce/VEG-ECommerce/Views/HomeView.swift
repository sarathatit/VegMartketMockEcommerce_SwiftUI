//
//  HomeView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 20/11/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cartManger: CartManager
    var body: some View {

        NavigationStack {
            ZStack(alignment: .top) {
                    Color.white
                        .ignoresSafeArea()
                    
                    VStack {
                        AppBar()
                        
                        SearchView()
                        
                        ImageSliderView()
                        
                        HStack {
                            Text("New Arivals")
                                .font(.title2)
                                .fontWeight(.medium)
                            
                            Spacer()
                            
                            NavigationLink {
                                ItemView()
                            } label: {
                                Image(systemName: "circle.grid.2x2.fill")
                                    .foregroundStyle(Color("primary"))
                            }

                        }
                        .padding()
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(productList, id:\.id) { product in
                                    NavigationLink {
                                        ItemDetailView(product: product)
                                    } label: {
                                        ItemCardView(product: product)
                                            .environmentObject(cartManger)
                                    }

                                }
                            }
                            .padding(.horizontal)
                        }
                        
                    }
                    
            }
        }
        
        
    }
}

#Preview {
    HomeView()
        .environmentObject(CartManager())
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("bangalore, India")
                        .font(.title2)
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    NavigationLink {
                        CartView()
                    } label: {
                        CartButton(numberOfProducts: cartManager.products.count)
                    }
                    
                }
                
                Text("Find the most \nFresh ")
                    .font(.title)
                    .bold()
                + Text("Vegitable")
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color("primary"))
            }
            .padding()
        }
        .environmentObject(cartManager)
    }
}
