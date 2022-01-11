//
//  ContentView.swift
//  AVAudioPlayer
//
//  Created by Cruz Torres on 11/01/22.
//

import SwiftUI
import AVKit

//Creamos una estructura
struct SoundModel: Hashable {
    let name:String
    
    func getURL() -> URL {
        return URL(string: Bundle.main.path(forResource: name, ofType: "wav")!)!
    }
}

let arrayOfSounds: [SoundModel] = [
    .init(name: "1"),
    .init(name: "2"),
    .init(name: "3"),
    .init(name: "4"),
    .init(name: "5"),
    .init(name: "6"),
    .init(name: "7"),
    .init(name: "8"),
    .init(name: "9"),
    .init(name: "10")
]

class SoundPlayer {
    var player:AVAudioPlayer?
    
    func play(withURL url: URL){
        player = try! AVAudioPlayer(contentsOf: url)
        player?.prepareToPlay()
        player?.play()
    }
}

struct ContentView: View {
    
    private let soundPlayer = SoundPlayer()

    var body: some View {
        List {
            ForEach(arrayOfSounds, id: \.self) { sound in
                Button("Play Sound \(sound.name)"){
                    soundPlayer.play(withURL: sound.getURL())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
