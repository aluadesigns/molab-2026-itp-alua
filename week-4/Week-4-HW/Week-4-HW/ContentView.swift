import SwiftUI
import Playgrounds
import AVFoundation

let bundleAudio = [
    "bbc-birds-1.m4a",
    "bbc-birds-2.m4a",
    "scale-1.m4a",
    "bbc-birds-1.m4a"
]

func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
    let path = Bundle.main.path(forResource: fileName, ofType:nil)!
    let url = URL(fileURLWithPath: path)
    do {
        return try AVAudioPlayer(contentsOf: url)
    } catch {
        print("loadBundleAudio error", error)
    }
    return nil
}

struct ContentView: View {

    
    @State private var players: [AVAudioPlayer?] = [nil, nil, nil, nil]
    
    func playSound(_ i: Int) {
           if players[i]?.isPlaying == true {
               players[i]?.stop()
           } else {
               players[i] = loadBundleAudio(bundleAudio[i])
               players[i]?.play()
           }
       }
    
    var body: some View {
        var myColor = Color(red: 0.1, green: 0.0, blue: 0.9)
        ZStack{
            LinearGradient(stops: [
                .init(color: .white, location: 0.25),
                .init(color: .green, location: 0.95),
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea() // to ignore the white safe area border
            
            HStack{
                Circle()
                    .fill(myColor)
                    .onTapGesture { playSound(0) }
                VStack{
                    Circle()
                    .onTapGesture { playSound(1) }

                    Circle()
                    .onTapGesture { playSound(2) }

                }
                Circle()
                    .fill(myColor)
                    .onTapGesture { playSound(3) }

                
                
                
            }
            .padding(30)
            
        }
    }
    
}
        

#Preview {
    ContentView()
}

#Playground {
    _ = 1 + 2
}
