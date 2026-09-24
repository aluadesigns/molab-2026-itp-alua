//
//  ContentView.swift
//  FirstApp
//
//  Created by Alua Amangeldikyzy on 9/17/26.
//

import SwiftUI

struct ContentView: View { //the view
    
    @State var counter: CGFloat = 0 //when this variable changes, the ui updates
    
    var body: some View { //the body of the view
        
        VStack {
//            Image(systemName: "globe")
//                /*.imageScale(.large)*/
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .foregroundStyle(.tint)
            Text("wow, world!")
                .font(.system(size: counter))
            
            Button("Make bigger") {
                counter += 10
            }
            Button("Make smaller") {
                counter -= 10
            }
//            Text("you clicked \(counter) times")
//                .font(.system(size: 30, design: .serif))
//                .italic()
//            Button(counter < 10 ? "click" : "stop") {
//                counter += 1
//                print(counter)
//            }
//            .font(.system(size: 30, weight: .semibold))
//
            
            .onAppear() { //will print every time smth changes
                print("upadating")
            }
        }
        .padding()
    }
    
    //body is a closure
}

#Preview {
    ContentView()
}
