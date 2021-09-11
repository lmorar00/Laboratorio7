//
//  ContentView.swift
//  swstate
//
//  Created by Luis Mora Rivas on 11/9/21.
//

import SwiftUI

struct ContentView: View {
    @State var pokemonName = "---"
    let list = ["Squirtle", "Bulbasur", "Charmander", "Pikachu"]
    var body: some View {
        VStack {
            Text("Random Pokemon Generator")
            Text(pokemonName)
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: 50
                )
                .background(Color.blue)
                .foregroundColor(Color.white)
                .padding(10)
            Button(
                action: {self.switchPokemon()},
                label: {
                    Text("Run")
                }
            )
        }
    }
    
    func switchPokemon() {
        
        pokemonName = list.randomElement() ?? ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
