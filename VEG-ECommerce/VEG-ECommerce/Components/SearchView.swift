//
//  SearchView.swift
//  VEG-ECommerce
//
//  Created by Sarath kumar on 19/11/24.
//

import SwiftUI

struct SearchView: View {
    @State private var search = ""
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("search for your vegitable", text: $search)
                    .padding()
            }
            .background(Color("secondary"))
            .cornerRadius(10)
            
            
            Image(systemName: "camera")
                .padding()
                .foregroundStyle(.white)
                .background(Color("primary"))
                .cornerRadius(10)
                
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchView()
}
