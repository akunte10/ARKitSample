//
//  SheetView.swift
//  ARKitSample
//
//  Created by Ajay Kunte on 28/10/24.
//

import SwiftUI

struct SheetView: View {
    @Binding var isPresented: Bool
    @State var modelName: String = "pancakes"
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ARViewContainer(modelName: $modelName)
                .edgesIgnoringSafeArea(.all)
            
            Button {
                isPresented.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .backgroundStyle(.ultraThinMaterial)
                    .clipShape(Circle())
            }
            .padding(24)
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(isPresented: .constant(false))
    }
}
