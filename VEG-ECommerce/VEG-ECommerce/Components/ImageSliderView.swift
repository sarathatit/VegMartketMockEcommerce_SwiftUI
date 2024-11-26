//
//  ImageSliderView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 18/11/24.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides: [String] = ["white onion","spinach","redchilli","pumpkin","carrot"]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(slides[currentIndex])
                .resizable()
                .frame(width: .infinity, height: 180)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
            
            HStack {
                ForEach(0..<slides.count) { index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("primary") : Color("secondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if currentIndex + 1 == self.slides.count {
                    currentIndex = 0
                } else {
                    currentIndex += 1
                }
            }
            }
    }
}

#Preview {
    ImageSliderView()
}
