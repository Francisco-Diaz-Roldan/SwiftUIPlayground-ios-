//
//  HeartSwiftUIView.swift
//  SwuiftUIPlayGround
//
//  Created by Francisco Díaz Roldán on 19/3/24.
//

import SwiftUI

struct HeartSwiftUIView: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colorChange ? .yellow: .red)
            .scaleEffect(sizeChange ? 1.5: 1)
            .animation(.default, value:colorChange)
            .animation(.easeInOut, value: sizeChange)
            .onTapGesture {
                colorChange.toggle()
            }
            .onLongPressGesture {
                sizeChange.toggle()
            }
    }
}

struct HeartSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HeartSwiftUIView()
    }
}
