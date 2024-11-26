//
//  ListaTareas.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import Foundation
import SwiftUI

struct TareasGridview:View {
    
    let optionesT = [
        opccionesTareas( titulo: "Ensallo Economia", texto: "Como la Econonomia impacta en la educacion en Mexico "),
        opccionesTareas(titulo: "Metodos Numericos", texto: "Realiza una Matriz jacobiana con gauss-Jordan"),
        opccionesTareas( titulo: "Manual de Identidad", texto: "Crear la dentidad de una Marca"),
        opccionesTareas( titulo: "Video Sexualidad", texto: "Video de 8 min explicando la sexualidad y como enseñarla" )
    ]
    let gridItems = [GridItem()]
    
    var body: some View {
        LazyVGrid(columns: gridItems, content: {
            ForEach(optionesT){ optionT in
                OpcionesCellTareas(optionT : optionT)
                
            }
        })
        .padding()
    }
}

