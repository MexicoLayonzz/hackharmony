//
//  Nav.swift
//  PlayPlace
//
//  Created by Fernando Aguilar on 25/11/24.
//
import SwiftUI

// Listado de Iconos para el menú
let iconos = ["person.crop.circle", "star", "briefcase", "message", "sun.max"]

struct Nav: View {
    @State private var IndexSeleccionado = 0
    let usuario = Usuario(nombre: "Juan Pérez", edad: 30, email: "juan.perez@example.com", imagenPerfil: "usuarioPerfil")
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                
                switch IndexSeleccionado {
                    
                case 1:
                    logrosview()
                case 2:
                    Tareassview()
                case 3:
                    ChatView()
                case 4:
                    MeditarView()
                default:
                    UsuarioView(usuario: usuario)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white) // Fondo de la pantalla principal

            // Barra de Menú
            HStack {
                ForEach(0..<iconos.count, id: \.self) { index in
                    Button(action: {
                        IndexSeleccionado = index
                    }) {
                        Image(systemName: iconos[index])
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(index == IndexSeleccionado ? .white : Color(hex: 0xFFAB13))
                            .padding(10)
                    }
                }
            }
            .padding(.vertical, 10)
            .background(Color(hex: 0x323964).edgesIgnoringSafeArea(.bottom)) // Fondo del menú
        }
    }
}

struct Nav_Previews: PreviewProvider {
    static var previews: some View {
        Nav()
    }
}

