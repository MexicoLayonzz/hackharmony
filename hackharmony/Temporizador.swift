//
//  Temporizador.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//
import SwiftUI

struct CircularTimerView: View {
    @State private var progress: Double = 0.0
    @State private var isRunning: Bool = false
    let totalTime: TimeInterval = 8 // Duración del temporizador en segundos

    var body: some View {
        VStack {
            ZStack {
                // Círculo de fondo
                Circle()
                    .stroke(lineWidth: 15)
                    .opacity(0.3)
                    .foregroundColor(.blue)
                
                // Círculo de progreso
                Circle()
                    .trim(from: 0.0, to: progress)
                    .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round))
                    .foregroundColor(.blue)
                    .rotationEffect(.degrees(-90)) // Girar para que comience desde arriba
                    .animation(.easeInOut(duration: 0.2), value: progress)
                
                // Texto en el centro
                Text("\(Int((1.0 - progress) * totalTime))")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
            }
            .frame(width: 200, height: 200)

            // Botón para iniciar/detener el temporizador
            Button(action: {
                isRunning.toggle()
                if isRunning {
                    startTimer()
                }
            }) {
                Text(isRunning ? "Detener" : "Iniciar")
                    .font(.title2)
                    .padding()
                    .background(isRunning ? Color.red : Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }

    // Función para iniciar el temporizador
    private func startTimer() {
        progress = 0.0
        let interval: TimeInterval = 0.1 // Intervalo de actualización del temporizador
        let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { timer in
            if progress >= 1.0 {
                timer.invalidate()
                isRunning = false
            } else {
                progress += interval / totalTime
            }
        }
        RunLoop.current.add(timer, forMode: .common)
    }
}

struct CircularTimerView_Previews: PreviewProvider {
    static var previews: some View {
        CircularTimerView()
    }
}
