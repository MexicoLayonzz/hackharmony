//
//  UsuarioView.swift
//  hackharmony
//
//  Created by Fernando Aguilar on 26/11/24.
//
import SwiftUI

struct UsuarioView: View {
    var usuario: Usuario

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Image("3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(hex: 0x323964), lineWidth: 4))
                
                VStack(alignment: .leading) {
                    Text(usuario.nombre)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Edad: \(usuario.edad)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(usuario.email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding()

            Spacer()
        }
        .navigationTitle("Perfil del Usuario")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white) // Fondo de la pantalla principal
    }
}

struct UsuarioView_Previews: PreviewProvider {
    static var previews: some View {
        UsuarioView(usuario: Usuario(nombre: "Juan Pérez", edad: 30, email: "juan.perez@example.com", imagenPerfil: "usuarioPerfil"))
    }
}

