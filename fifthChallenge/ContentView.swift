//
//  ContentView.swift
//  fifthChallenge
//
//  Created by Bruno Nascimento on 26/04/22.
//

import SwiftUI

struct ContentView: View {
    var states = [
        "DF": "Distrito Federal",
        "SP": "São Paulo",
        "SC": "Santa Catarina",
        "MG": "Minas Gerais",
        "RJ": "Rio de Janeiro",
        "ES": "Espírito Santo",
        "PR": "Paraná",
        "RS": "Rio Grande do Sul",
    ]

    var stateAndCountry: (String, String) = ("Estados", "Brasil")
    
    var body: some View {
        Group {
            List {
                Section("\(stateAndCountry.0) do \(stateAndCountry.1)") {
                    ForEach(states.sorted(by: <), id: \.key) { uf, state in
                        Text("\(state)")
                            .onDisappear(perform: {
                                print("\(uf) desapareceu da tela")
                            })
                    }
                }
            }
            .onAppear(perform: {
                print("--------Estados--------")
                for state in states {
                    print("\(state.key) - \(state.value)")
                }
                print("-----------------------")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
