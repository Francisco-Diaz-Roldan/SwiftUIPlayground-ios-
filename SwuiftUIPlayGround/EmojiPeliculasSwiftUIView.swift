//
//  EmojiPeliculasSwiftUIView.swift
//  SwuiftUIPlayGround
//
//  Created by Francisco Díaz Roldán on 20/3/24.
//

import SwiftUI
import AVFoundation

struct EmojiPeliculasSwiftUIView: View {
    
    let synthesizer = AVSpeechSynthesizer()

    
    var body: some View {
        
        VStack {
            
         Text("Guest These Movies")
                .fontWeight(.bold)
                .font(.system(.title, design: .rounded))
            Text("Can you guess the movie from these emojis?")
            Text("Tap the button to find out the answer")

            
            Button {
                speak(text:  "Shrek")

            } label: {
                Text("👹💚👸 🐴❤️🐉")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.purple)
        .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button {
                speak(text:  "Sonic la pelicula")

            } label: {
                Text("🟦🦔🍩")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.yellow)
        .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button {
                speak(text:  "Batman")

            } label: {
                Text("🦇👨")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Button {
                speak(text:  "Ocean's 11")

            } label: {
                Text("🌊1️⃣1️⃣")
                    .fontWeight(.bold)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(.green)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
    
    func speak(text: String) {
        let utterance = AVSpeechUtterance(string: text) //Frase a decir
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Kyoko") //La voz que lee el mensaje
        
        synthesizer.speak(utterance) //Para que lea el mensaje
    }

}

struct EmojiPeliculasSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiPeliculasSwiftUIView()
    }
}
