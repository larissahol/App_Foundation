//
//  Materiais.swift
//  ColetaSeletiva
//
//  Created by user on 09/06/23.
//
import Foundation
import SwiftUI

struct MaterialReciclavel {
    let icone: String
    let material: String
    let texto: String
}

let materialReciclavelTexto: [MaterialReciclavel] = [
    MaterialReciclavel(icone: "📜", material: "Papel/Papelão", texto: "Reciclável: jornais, revistas, caixas de papelão, folhas de caderno. Não reciclável: fotografias, guardanados, papéis sujos ou engordurados, papéis metalizados, parafinados e plastificados, papel carbono, papéis de fax, etiqueta adesiva, fita crepe."),
    MaterialReciclavel(icone: "📂", material: "Plástico", texto: "Reciclável: garrafas de refrigerante, copos e sacos plásticos, frascos de shampoo e detergente, embalagens de margarina e material de limpeza, canudos, canos e tubos. Não reciclável: cabo de panela, tomada, embalagens de alimentos."),
    MaterialReciclavel(icone:"🥫", material: "Metal", texto: "Reciclável: latas de aço, latas de alumínio, panelas, pregos, fios, arames, sucatas de automóveis. Não reciclável: pilhas, clips, grampos, esponjas de aço."),
    MaterialReciclavel(icone:"🫙", material: "Vidro", texto: "Reciclavel: garrafas, copos, potes, frascos, cacos. Não reciclável: espelhos, lâminas, porcelana, cerâmica, tubos de TV, vidro temperado, ampolas de remédio."),
    MaterialReciclavel(icone: "🪵", material: "Madeira", texto: "Madeira"),
]

struct MaterialNaoReciclavel {
    let iconeN: String
    let materialN: String
    let textoN: String
}

let materialNaoReciclavelTexto: [MaterialNaoReciclavel] = [
    MaterialNaoReciclavel(iconeN: "⚠️", materialN: "Resíduos perigosos", textoN: "Não reciclável: pilhas, baterias, lâmpadas fluorescentes, pneus inservíveis, embalagens de agrotóxicos."),
    MaterialNaoReciclavel(iconeN: "🚑", materialN: "Resíduos ambulatórios e de serviços de saúde", textoN: "Não reciclável: seringas, ataduras, agulhas, algodão, gazes."),
    MaterialNaoReciclavel(iconeN: "🍃", materialN: "Resíduos orgânicos", textoN: "Não reciclável: cascas de legumes, folhas, restos de comida, frutas, cascas de ovos."),
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
    case "Resíduos ambulatórios e de serviços de saúde":
        return "Lixeira branca"
    case "Resíduos orgânicos":
        return "Lixeira marrom"
    default:
        return ""
    }
}
