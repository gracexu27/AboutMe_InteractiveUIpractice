//
//  ContentView.swift
//  AboutMe_InteractiveUIpractice
//
//  Created by Grace Xu on 7/13/23.
//


import SwiftUI

struct ContentView: View {
    @State private var fact = ""
    
    var body: some View {
        ZStack {
            Color(.systemGray3)
                .ignoresSafeArea()
            
            VStack {
                Text("Hi, I'm Grace Xu!")
                    .font(.title)
                    .fontWeight(.bold)
                Image("grace")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 360.0)
                    .cornerRadius(15)
                
                Button("Click to Learn a Fact About Me!") {
                    let facts = ["I have a pet cat named Mimi!", "I love to crochet!", "I have 2 sisters!"]
                    let randomFact = facts.randomElement() ?? ""
                    fact = randomFact
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.349, saturation: 0.274, brightness: 0.498))
                
                Text(fact)
                    .foregroundColor(Color(hue: 0.671, saturation: 0.694, brightness: 0.292))
                   
                    
                
            }
            .padding(.horizontal)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


