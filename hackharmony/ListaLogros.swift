//
//  ListaLogros.swift
//  hackharmony
//
//  Created by CEDAM27 on 25/11/24.
//
import Foundation
import SwiftUI

struct OpcionesGridview:View {
    
    let optiones = [
        opccionesLogros(imagenNombre: "7", titulo: "Caminar", texto: "Hoy caminaste 2.5 Km"),
        opccionesLogros(imagenNombre: "4", titulo: "Dormir", texto: "Has dommido 5 hrs"),
        opccionesLogros(imagenNombre: "6", titulo: "Visitar un lugar nuevo", texto: "Salgamos un rato"),
        opccionesLogros(imagenNombre: "2", titulo: "Hablar con amigos", texto: "Tu amigo te espera")
    ]
    let gridItems = GridItem(.flexible(minimum: 140, maximum: 200))
    
    var body: some View {
        LazyVGrid(columns: [gridItems,gridItems], content: {
            ForEach(optiones){ option in
                OpcionesCell(option : option)
                
            }
        })
        .padding()
    }
}
