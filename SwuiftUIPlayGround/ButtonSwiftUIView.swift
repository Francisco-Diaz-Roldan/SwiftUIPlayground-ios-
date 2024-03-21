//
//  ButtonSwiftUIView.swift
//  SwuiftUIPlayGround
//
//  Created by Francisco Díaz Roldán on 19/3/24.
//

import SwiftUI
import AVFoundation


struct ButtonSwiftUIView: View {
    
    let synthesizer = AVSpeechSynthesizer()

    
    var body: some View {
        
        VStack {
            Button {
                speak(text:  "Oh, no, se me ha caído el salchichonio")

            } label: {
                Text("Aqui no, mi vida uwu")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.yellow)
        .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button {
                speak(text:  "Holiwi de kiwi")

            } label: {
                Text("Hello, World!")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.purple)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text) //Frase a decir
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Kyoko") //La voz que lee el mensaje
        
        synthesizer.speak(utterance) //Para que lea el mensaje
    }
}

struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView()
    }
}
