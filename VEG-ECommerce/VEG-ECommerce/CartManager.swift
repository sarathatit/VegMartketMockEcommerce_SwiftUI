//
//  CartManager.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 19/11/24.
//

import Foundation

class CartManager: ObservableObject {
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromTheProduct(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
