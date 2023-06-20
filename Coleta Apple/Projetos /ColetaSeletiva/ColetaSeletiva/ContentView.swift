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
                    Label("Coleta Apple", systemImage: "apple.logo")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.light)
                }
                Spacer()
            }
            .padding()
            
            NavigationView {
                List {
                    
                    Section {
                        ForEach(InicioTexto, id: \.material) { Inicio in
                                           NavigationLink(destination: Text(Inicio.texto).padding(25)) {
                                               Text(Inicio.icone)
                                               VStack(alignment: .leading) {
                                                   Text(Inicio.material)
                                                       .font(.headline)
                                                       .bold()
                                                   Text(corDaLixeira(Inicio.material))
                                                       .font(.subheadline)
                                                       .foregroundColor(.gray)
                                                       .padding(.bottom, 9)
                                               }
                                           }
                                           .padding()
                                       }
                                   }
                    header : {
                                       Text("Início")
                                   }
                    
                    
                    
                    
                    
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
                        Text("Materiais recicláveis")
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
                            Text("Materiais não Recicláveis")
                        }
                    
                    Section {
                        ForEach(SobreTexto, id: \.material) { Sobre in
                                           NavigationLink(destination: Text(Sobre.texto).padding(25)) {
                                               Text(Sobre.icone)
                                               VStack(alignment: .leading) {
                                                   Text(Sobre.material)
                                                       .font(.headline)
                                                       .bold()
                                                   Text(corDaLixeira(Sobre.material))
                                                       .font(.subheadline)
                                                       .foregroundColor(.gray)
                                                       .padding(.bottom, 9)
                                               }
                                           }
                                           .padding()
                                       }
                                   }
                    header : {
                                       Text("Sobre o aplicativo")
                                   }
                    
                    
                    
                    
                    
                    }
                }.navigationTitle(Text("Separação de Materiais"))

            }
            .scrollContentBackground(.hidden)
            .background(Color.green.opacity(0.8).edgesIgnoringSafeArea(.all))

        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
