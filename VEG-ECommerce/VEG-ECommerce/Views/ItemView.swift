//
//  ItemView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 22/11/24.
//

import SwiftUI

struct ItemView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: column, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ItemCardView(product: product)
                    }
                }
                .padding()
            }
            
            .navigationTitle(Text("All Vegitables"))
        }
    }
}

#Preview {
    ItemView()
        .environmentObject(CartManager())
}
