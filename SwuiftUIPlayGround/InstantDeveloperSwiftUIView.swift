//
//  InstantDeveloperSwiftUIView.swift
//  SwuiftUIPlayGround
//
//  Created by Francisco Díaz Roldán on 20/3/24.
//

import SwiftUI

struct InstantDeveloperSwiftUIView: View {
    var body: some View {
        VStack(spacing: 20) {
            VStack {
                Text("Instant Developer")
                    .fontWeight(.medium)
                    .font(.system(size: 40))
                    .foregroundColor(.indigo)
                
                Text("Get help from experts in 15 minutes")
            }
            
            HStack (alignment: .bottom, spacing:10){
                Image("user1")
                    .resizable()
                .scaledToFit()
                
                Image("user2")
                    .resizable()
                .scaledToFit()
                
                Image("user3")
                    .resizable()
                .scaledToFit()
            }
            .padding(.horizontal, 20)
            
            Spacer()
            
            VStack {
                Button {
                    
                } label: {
                    Text("Sign Up")
                }
                .frame(width: 200)
                .padding()
                .foregroundStyle(.white)
                .background(.indigo)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                Button {
                    
                } label: {
                    Text("Log in")
                }
                .frame(width: 200)
                .padding()
                .foregroundStyle(.white)
                .background(.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding(.top, 30)
    }
}

struct InstantDeveloperSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InstantDeveloperSwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
            .previewDisplayName("iPhone 12 Pro")
            
            InstantDeveloperSwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
            .previewDisplayName("iPhone 12 Pro")
            .previewInterfaceOrientation(.landscapeLeft)
            
            InstantDeveloperSwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
                .previewDisplayName("iPhone 12 Pro Max")
            
            InstantDeveloperSwiftUIView()
                .previewDevice(PreviewDevice(rawValue: "iPad Air (4th generation)"))            .previewDisplayName("iPad Air")
        }
    }
}
