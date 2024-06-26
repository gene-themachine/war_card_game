//
//  ContentView.swift
//  War Card Game
//
//  Created by Eugene Park on 6/23/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card3"
    @State var PlayerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        
        
        ZStack{
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
             
            VStack{
                ///War
                Spacer()
                Image("logo")
                    
                    
                Spacer()
                ///Cards
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                

                ///Deal
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                
                
                .foregroundColor(.white)
                .font(.largeTitle)
                
                
                
                Spacer()
                    
                
                
                //Player/ Cpu
                
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(PlayerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                //Numbers
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    
                }
                .foregroundColor(Color.white)
            
                
                
                Spacer()
                    
                    
                    
                
               
                
                
            }
            
        }
        
        
        
    }
    func deal() {
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            PlayerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }

        
        
    }
}

#Preview {
    ContentView()
}

