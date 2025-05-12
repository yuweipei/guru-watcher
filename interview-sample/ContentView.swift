//
//  ContentView.swift
//  interview-sample
//
//  Created by David Pei on 5/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GurusView()
                .tabItem {
                    Text("Gurus")
                        .foregroundStyle(.black)
                }
            ProfileView()
                .tabItem {
                    Text("Me")
                }
        }
    }
}

#Preview {
    ContentView()
}
