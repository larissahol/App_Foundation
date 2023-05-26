//
//  ContentView.swift
//  Esqueleto
//
//  Created by user on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    let atividades = atividadesList
    var body: some View {
        VStack {
            HStack{
                Text("Coleta Seletiva")
                Spacer()
                Image(systemName: "list.bullet.circle")
                
            }.padding()
            
            NavigationView {
                List {
                    ForEach(atividades,id:\.self) {atividades in NavigationLink(destination: Text(atividades)) {
                        Image(systemName: "person.crop.circle.fill")
                        Text(atividades)
                        
                    }.padding()
                        
                    }.navigationTitle("Materiais")
                }
            }
            
            /* TabView {
             Text("Inicio")
             .font(.system(size: 30, weight: .bold, design: .rounded))
             .tabItem{
             Image(systemName: "house.fill")
             Text("Home")
             }
             */
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
