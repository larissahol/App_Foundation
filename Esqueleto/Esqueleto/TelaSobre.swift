//
//  TelaSobre.swift
//  Esqueleto
//
//  Created by user on 26/05/23.
//

import SwiftUI

struct TelaSobre: View {
    var body: some View {
        VStack {
            HStack {
                Text("Sobre")
                Spacer()
                Image(systemName: "list.bullet.circle")
            }.padding()
            
            NavigationView {
                Text("Texto com informações sobre a aplicação Texto com informações sobre a aplicação Texto com informações sobre a aplicação Texto com informações sobre a aplicação Texto com informações sobre a aplicação").padding(20)
                .navigationTitle("Sobre o aplicativo")
            }
        }
    }
}

struct TelaSobre_Previews: PreviewProvider {
    static var previews: some View {
        TelaSobre()
    }
}
