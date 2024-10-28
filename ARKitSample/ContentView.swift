//
//  ContentView.swift
//  ARKitSample
//
//  Created by Ajay Kunte on 28/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "pancakes")
                .resizable()
                .foregroundStyle(.tint)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
                .padding(24)
            
            Button {
                isPresented.toggle()
            } label: {
                Label("View in AR", systemImage: "arkit")
            }
            .buttonStyle(BorderedProminentButtonStyle())
            .padding(24)
        }
        .padding()
        
        .fullScreenCover(isPresented: $isPresented) {
            SheetView(isPresented: $isPresented)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
