//
//  Respira.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import Foundation
import SwiftUI

struct Respira: View {
    
    @State var isAction : Bool = true
    var body: some View {
        if isAction{
            ZStack(alignment: .center) {
                // Fondo azul que ocupa el espacio del header
                Color(hex: 0x323964)
                    .edgesIgnoringSafeArea(.top)
                
                HStack {
                    VStack(alignment: .center, spacing: 10) {
                        Text("INHALA")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white) // Texto visible sobre fondo azul
                        CircularTimerView()
                        Text("Sigue el ritmo del indicador")
                            .font(.title3)
                            .fontWeight(.light)
                            .foregroundColor(.white.opacity(0.8)) // Más tenue
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
                }
                
            }
        }else{
            MeditarView()
        }
        
    }
}
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y: rect.midY)) // Punta de la flecha
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY)) // Extremo superior izquierdo
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY)) // Extremo inferior izquierdo
        path.closeSubpath()
        return path
    }
}

struct Respira_Previews: PreviewProvider{
    static var previews: some View{
        Respira()
    }
}


