//
//  ContentView.swift
//  war-challenge
//
//  Created by Simon Gaviria on 1/2/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card3"
    @State var cpuCard = "card2"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack(){
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                
                HStack(alignment: .center){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }.padding(.all)
                
                Spacer()
                
                Button {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    }else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton").padding(.all)
                }

                Spacer()
                
                HStack(alignment: .center){
                    Spacer()
                    
                    VStack(){
                        Text("Player").foregroundColor(Color.white).multilineTextAlignment(.leading).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Text(String(playerScore)).foregroundColor(Color.white)
                            .padding(.all)
                    }
                    
                    Spacer()
                    
                    VStack(){
                        Text("CPU").foregroundColor(Color.white).multilineTextAlignment(.trailing).padding(.all)
                        Text(String(cpuScore)).foregroundColor(Color.white).padding(.all)
                    }
                    Spacer()
                }
                Spacer()
            }
        }.padding(.all).background(Image("background")
                                    .edgesIgnoringSafeArea(.all))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
