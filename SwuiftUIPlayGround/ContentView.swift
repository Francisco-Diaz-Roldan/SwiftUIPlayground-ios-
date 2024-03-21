//
//  ContentView.swift
//  SwuiftUIPlayGround
//
//  Created by Francisco Díaz Roldán on 19/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            GridRow {
                Color.purple
                Color.orange
            }
            
            GridRow {
                Color.green
                Color.yellow
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
