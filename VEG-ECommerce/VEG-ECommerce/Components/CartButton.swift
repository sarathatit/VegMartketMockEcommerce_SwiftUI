//
//  CartButton.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 20/11/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart.fill")
                .foregroundStyle(.black)
                .padding(9)
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .frame(width: 17, height: 17)
                    .background(.green)
                    .cornerRadius(8)
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 2)
}
