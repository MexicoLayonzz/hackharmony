//
//  Meditar.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import SwiftUI

struct MeditarView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .center) {
                // Fondo circular
                Circle()
                    .foregroundStyle(Color(hex: 0x323964))
                    .frame(width: 950, height: 500)
                    .position(x: 200, y: -20)
                
                // Imagen principal
                Image("3")
                    .resizable()
                    .padding()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(hex: 0x323964), lineWidth: 4))
                    .position(x: 200, y: 190)
                
                // Contenido principal
                VStack(alignment: .center) {
                    Text("Tómate un tiempo para ti".uppercased())
                        .fontWeight(.bold)
                        .foregroundStyle(Color(hex: 0x323964))
                    
                    VStack(spacing: 20) {
                        // Botón para navegar a Respira
                        NavigationLink(destination: Respira()) {
                            Text("Respirar".uppercased())
                                .fontWeight(.bold)
                                .foregroundStyle(Color(hex: 0x323964))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(hex: 0x323964), lineWidth: 3)
                                )
                        }
                        
                        // Botón de Música/Podcast (aún sin destino)
                        Button(action: {
                            // Aquí puedes manejar la acción correspondiente
                        }, label: {
                            Text("Música/Podcast".uppercased())
                                .fontWeight(.bold)
                                .foregroundStyle(Color(hex: 0x323964))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        })
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(hex: 0x323964), lineWidth: 3)
                        )
                        
                        // Botón para navegar a Consejos
                        NavigationLink(destination: ConsjodelDia()) {
                            Text("Consejos".uppercased())
                                .fontWeight(.bold)
                                .foregroundStyle(Color(hex: 0x323964))
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(hex: 0x323964), lineWidth: 3)
                                )
                        }
                    }
                    .padding()
                }
                .position(x: 200, y: 500)
            }
        }
    }
}


struct MeditarView_Previews: PreviewProvider{
    static var previews: some View{
        MeditarView()
    }
}


