//
//  ItemCardView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 19/11/24.
//

import SwiftUI

struct ItemCardView: View {
    @EnvironmentObject var cartManger: CartManager
    var product: Product
    var body: some View {
        ZStack {
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(product.image)
                        .resizable()
                        .frame(width: 170, height: 160)
                        .cornerRadius(12)
                        
                    Text(product.name)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.black)
                        .padding(.vertical, 2)
                    Text(product.supplier)
                        .font(.caption)
                        .fontWeight(.light)
                    Text("$\(product.price)")
                        .font(.title3)
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                    
                }
                
                Button(action: {
                    cartManger.addToCart(product: product)
                }, label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundStyle(Color("primary"))
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 10)
                })
            }
        }
        .frame(width: 185, height: 260)
        .background(Color("secondary"))
        .cornerRadius(12)
    }
}

#Preview {
    ItemCardView(product: productList[14])
}
