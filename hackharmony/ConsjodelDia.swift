//
//  ConsjodelDia.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//

//
//  Respira.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import Foundation
import SwiftUI

struct ConsjodelDia: View {
    @State var isAction: Bool = true

    var body: some View {
        if isAction {
            ZStack {
                // Fondo azul
                Color(hex: 0x323964)
                    .edgesIgnoringSafeArea(.all) // Ocupa toda la pantalla
                Circle()
                    .foregroundStyle(Color(hex: 0x323964))
                    .frame(width: 950, height: 500)
                    .position(x: 200, y: -20)

                Image("8")
                    .resizable()
                    .padding()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(hex: 0x323964), lineWidth: 4))
                    .position(x: 200, y: 190)
                VStack{
                    Spacer()
                    
                    Text("COSEJO O MÉTODO DEL DÍA")
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(.white.opacity(0.8)) // Más tenue
                        .multilineTextAlignment(.center) // Texto centrado
                        .padding()

                    Text("Tu cuerpo es templo de la naturaleza y del espíritu divino. Consérvalo sano, respétalo, estúdialo y concédele sus derechos. Henri Frédéric Amiel, filósofo.")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white.opacity(0.8)) // Más tenue
                        .multilineTextAlignment(.center) // Texto centrado
                        .padding()

                    Button(action: {
                        isAction = false
                    }) {
                        // Flecha en forma de triángulo
                        Triangle()
                            .fill(Color.blue)
                            .frame(width: 30, height: 50)
                            .rotationEffect(.degrees(180)) // Rotamos el triángulo para apuntar a la izquierda
                    }
                    .buttonStyle(PlainButtonStyle()) // Elimina el estilo predeterminado del botón
                    .frame(width: 60, height: 60) // Tamaño del botón
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity) // Ocupa todo el espacio disponible
                .padding()
                .background(Color.clear) // Fondo transparente para la pila
            }
        } else {
            MeditarView()
        }
    }
}

struct Consejo_Previews: PreviewProvider {
    static var previews: some View {
        ConsjodelDia()
    }
}


