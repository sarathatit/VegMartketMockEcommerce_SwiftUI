//
//  CartView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 22/11/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartItemView(product: product)
                }
                
                HStack {
                    Text("Your Total is :")
                    Spacer()
                    Text("$ \(cartManager.total)")
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            } else {
                Text("Your Cart is Empty")
                    .font(.callout)
                    .bold()
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
