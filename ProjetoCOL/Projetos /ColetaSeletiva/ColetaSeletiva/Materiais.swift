//
//  Material.swift
//  ColetaSeletiva
//
//  Created by user on 13/06/23.
//

import Foundation
import SwiftUI

struct MaterialReciclavel {
    let icone: Image
    let material: String
    let texto: String
}

let materialReciclavelTexto: [MaterialReciclavel] = [
    MaterialReciclavel(icone: Image("papel"), material: "Papel/Papelão", texto: "Reciclável: jornais, revistas, caixas de papelão, folhas de caderno. Não reciclável: fotografias, guardanados, papéis sujos ou engordurados, papéis metalizados, parafinados e plastificados, papel carbono, papéis de fax, etiqueta adesiva, fita crepe."),
    MaterialReciclavel(icone: Image("plastico"), material: "Plástico", texto: "Reciclável: garrafas de refrigerante, copos e sacos plásticos, frascos de shampoo e detergente, embalagens de margarina e material de limpeza, canudos, canos e tubos. Não reciclável: cabo de panela, tomada, embalagens de alimentos."),
    MaterialReciclavel(icone: Image("metal"), material: "Metal", texto: "Reciclável: latas de aço, latas de alumínio, panelas, pregos, fios, arames, sucatas de automóveis. Não reciclável: pilhas, clips, grampos, esponjas de aço."),
    MaterialReciclavel(icone: Image("vidro"), material: "Vidro", texto: "Reciclavel: garrafas, copos, potes, frascos, cacos. Não reciclável: espelhos, lâminas, porcelana, cerâmica, tubos de TV, vidro temperado, ampolas de remédio."),
    MaterialReciclavel(icone: Image("madeira"), material: "Madeira", texto: "Madeira"),
]

struct MaterialNaoReciclavel {
    let iconeN: Image
    let materialN: String
    let textoN: String
    
}

let materialNaoReciclavelTexto: [MaterialNaoReciclavel] = [
    MaterialNaoReciclavel(iconeN: Image("perigoso"), materialN: "Resíduos perigosos", textoN: "Não reciclavel: pilhas, baterias, lampadas fluorescentes, pneus inservíveis, Embalagens de Agrotóxicos."),
    MaterialNaoReciclavel(iconeN: Image("hospitalar"), materialN: "Resíduos ambulatorios e de serviços de saúde", textoN: "Não reciclavel: seringas, ataduras, agulhas, algodão, gazes."),
    MaterialNaoReciclavel(iconeN: Image("organico"), materialN: "Resíduos orgânicos", textoN: "Não reciclavel: cascas de legumes, folhas, restos de comida, frutas, cascas de ovos."),
]


func corDaLixeira(_ material: String) -> String {
    switch material {
    case "Papel/Papelão":
        return "Lixeira azul"
    case "Plástico":
        return "Lixeira vermelha"
    case "Metal":
        return "Lixeira amarela"
    case "Vidro":
        return "Lixeira verde"
    case "Madeira":
        return "Lixeira preta"
    case "Resíduos perigosos":
        return "Lixeira laranja"
    case "Resíduos ambulatorios e de serviços de saúde":
        return "Lixeira branca"
    case "Resíduos orgânicos":
        return "Lixeira marrom"
    default:
        return ""
    }
}


