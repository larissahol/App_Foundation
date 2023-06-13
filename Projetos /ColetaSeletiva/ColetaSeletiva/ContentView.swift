//
//  ContentView.swift
//  ColetaSeletiva
//
//  Created by user on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    let materialReciclavel = materialReciclavelTexto
    let materialNaoReciclavel = materialNaoReciclavelTexto
    var body: some View {
        VStack {
            HStack {
                Menu {
                    Section(header: Text("Separação de Materiais")) {
                      
                    }
                    Section(header: Text("Sobre")) {
                        
                    }
                } label: {
                    Label("Coleta Seletiva", systemImage: "list.bullet.circle")
                }
                Spacer()
            }
            .padding()
            
            NavigationView {
                List {
                    Section {
                        ForEach(materialReciclavelTexto, id:\.material) {materialReciclavel in
                            NavigationLink(destination: Text(materialReciclavel.texto).padding(25)) {
                                Text(materialReciclavel.icone)
                                VStack(alignment: .leading){
                                    Text(materialReciclavel.material)
                                        .font(.headline)
                                        .bold()
                                    Text(corDaLixeira(materialReciclavel.material))
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .padding(.bottom, 9)
                                }
                            }
                            
                        }
                        .padding()
                    } header: {
                        Text("Recicláveis")
                    }
                    
                    Section {
                        ForEach(materialNaoReciclavelTexto, id: \.materialN) {materialNaoReciclavel in
                            NavigationLink(destination: Text(materialNaoReciclavel.textoN).padding(25)) {
                                Text(materialNaoReciclavel.iconeN)
                                VStack(alignment: .leading) {
                                    Text(materialNaoReciclavel.materialN)
                                        .font(.headline)
                                        .bold()
                                    Text(corDaLixeira(materialNaoReciclavel.materialN))
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        .padding(.bottom, 9)
                                }
                            }
                            .padding()
                        } } header: {
                            Text("Não Recicláveis")
                        }
                    
                    }
                }.navigationTitle(Text("Separação de Materiais"))

            }
            .scrollContentBackground(.hidden)
            .background(Color.mint.edgesIgnoringSafeArea(.all))

        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
