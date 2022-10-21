//
//  ContentView.swift
//  Dice_Game
//
//  Created by Théo Daguier on 21/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var numb : Int = 1
    
    var body: some View {
        
        VStack{
            Spacer()
            VStack {
                Image(systemName: "die.face.\(numb).fill")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
            }
            Spacer()
            HStack(alignment: .bottom){
                Button(action: {
                    numb = Int.random(in: 1...6)
            
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 170.0, height: 70.0)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                            
                        Text("Roll the dice !")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                   
                })
            }
            .padding()
        }
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
