//
//  ContentView.swift
//  alterarNom3
//  Created by user on 02/06/23.


import SwiftUI

struct ContentView: View {
@State private var username = ""
@State private var showingLoginScreen = false



var body: some View {
    NavigationView {
        ZStack {
            Color.white
                .ignoresSafeArea()
         

            VStack {
                Text("Alterar nome")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                TextField("NewUsername", text: $username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                   
        
                  
                Button("confirmar") {
                  
                    
                    }
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)
                .onTapGesture(perform: {
                   self.showingLoginScreen = true
                })
                
                NavigationLink(destination: Text("Seu nome foi alterado com sucesso! @\(username)"), isActive: $showingLoginScreen) {
                    EmptyView()
                }
            }
        }.navigationBarHidden(true)
    }
}
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
