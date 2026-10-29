//
//  ContentView.swift
//  FaceMesh
//
//  Created by jht2 on 3/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var analysis: String = ""
    @State var emoji: String = "😐"
    
    var body: some View {
        VStack {
            Text(analysis).frame(height: 40)
            ZStack {
                BridgeView(analysis: $analysis, emoji: $emoji)
                Text(emoji).font(.system(size: 60))
            }
            
        }
        //.padding()
    }
}

struct BridgeView: UIViewControllerRepresentable {
    @Binding var analysis: String
    @Binding var emoji: String

    func makeUIViewController(context: Context) -> some UIViewController {
        print("BridgeView makeUIViewController")
        
        let storyBoard: UIStoryboard = UIStoryboard(name:"Main", bundle:nil);
        let viewCtl = storyBoard.instantiateViewController(withIdentifier: "main") as! ViewController;
        
        print("BridgeView viewCtl", viewCtl)

        viewCtl.reportChange = {
            // print("reportChange")
            analysis = viewCtl.analysis
            emoji = viewCtl.emoji
        }
        return viewCtl
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // print("BridgeView updateUIViewController")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
