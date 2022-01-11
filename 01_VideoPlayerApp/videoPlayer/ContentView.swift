//
//  ContentView.swift
//  videoPlayer
//
//  Created by Cruz Torres on 03/11/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    let url = URL(string: "https://media.giphy.com/media/eIUO9UBA9fMW48U0K2/giphy.mp4")!
    
    
    var body: some View {
        VStack{
            //Video Local
            //VideoPlayer(player: .init(url: Bundle.main.url(forResource: "IMG_3804", withExtension: "MOV")!)){
            //Video en la red
            VideoPlayer(player: .init(url: url)) {
                Text("Si te gusta puedes dar Like al video")
                    .bold()
                    .foregroundColor(.white)
                Spacer()
            }
            
            Text("Hola como estas, estoy en 0")
                .bold()
                .padding(60)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
