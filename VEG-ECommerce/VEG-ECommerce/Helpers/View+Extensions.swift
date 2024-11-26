//
//  View+Extensions.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 18/11/24.
//

import SwiftUI

extension View {
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else { return .zero }
        
        return safeArea
    }
}
