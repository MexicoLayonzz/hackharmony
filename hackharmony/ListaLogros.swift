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
        opccionesLogros(imagenNombre: "", titulo: "Caminar", texto: "Hoy caminaste 2.5 Km"),
        opccionesLogros(imagenNombre: "", titulo: "Dormir", texto: "Has dommido 5 hrs"),
        opccionesLogros(imagenNombre: "", titulo: "Visitar un lugar nuevo", texto: "Salgamos un rato"),
        opccionesLogros(imagenNombre: "", titulo: "Hablar con amigos", texto: "Tu amigo zzz te espera")
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
