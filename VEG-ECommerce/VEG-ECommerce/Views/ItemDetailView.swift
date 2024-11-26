//
//  ItemDetailView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 22/11/24.
//

import SwiftUI

struct ItemDetailView: View {
    var product: Product
    var body: some View {
        ScrollView {
            ZStack(alignment: .topTrailing) {
                Image(product.image)
                    .resizable()
                    .frame(width: .infinity, height: 320)
                    .aspectRatio(contentMode: .fit)
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.top, 50)
                    .padding(.trailing)
                    .foregroundStyle(Color.red)
                    
            }
            
            VStack(alignment: .leading) {
                
                // Product Name And Price
                HStack {
                    Text("\(product.name)")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Text("$ \(product.price).00")
                        .font(.title2)
                        .bold()
                        .padding(.all, 10)
                        .background(Color("secondary"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
//                .padding(.horizontal)
                
                // Star
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundStyle(.yellow)
                    }
                    
                    Text("(4.5)")
                        .foregroundStyle(.gray)
                    
                    Spacer()
                    
                    HStack(spacing: 15) {
                        Button(action: {}, label: {
                            Image(systemName: "minus.square")
                        })
                        
                        Text("1")
                        
                        Button(action: {}, label: {
                            Image(systemName: "plus.square.fill")
                                .foregroundStyle(Color("primary"))
                        })
                    }
                }
                .padding(.vertical)
                
                // Description
                
                Text("Description")
                    .font(.title3)
                    .bold()
                Text("\(product.description)")
                
                
                PaymentButton(action: {})
                    .frame(width: .infinity, height: 35)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .offset(y: -30)
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ItemDetailView(product: productList[2])
}
