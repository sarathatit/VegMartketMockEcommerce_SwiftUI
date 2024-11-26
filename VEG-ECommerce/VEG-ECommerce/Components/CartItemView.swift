//
//  CartItemView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 21/11/24.
//

import SwiftUI

struct CartItemView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        HStack {
            Image(product.image)
                .resizable()
                .frame(width: 70, height: 50)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(9)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                Text("$ \(product.price)")
            }
            .padding()
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundStyle(.red)
                .onTapGesture {
                    cartManager.removeFromTheProduct(product: product)
                }
        }
        .padding(.horizontal)
        .background(Color("secondary"))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(width: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    CartItemView(product: productList[2])
        .environmentObject(CartManager())
}
