import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isFromCurrentUser: Bool
}

struct ChatView: View {
    @State private var messages: [Message] = [
        Message(text: "Hola, ¿cómo estás?", isFromCurrentUser: false),
        Message(text: "¡Todo bien! ¿Y tú?", isFromCurrentUser: true)
    ]
    @State private var inputText: String = ""

    var body: some View {
        VStack(spacing: 0) {
            // Header
            GeometryReader { geometry in
                ZStack(alignment: .top) {
                    // Fondo azul que ocupa el espacio del header
                    Color(hex: 0x323964)
                        .edgesIgnoringSafeArea(.top)

                    // Contenido del header
                    HStack {
                        
                        Image("5")
                            .resizable()
                            .padding()
                            .frame(width: geometry.size.width * 0.2, // Ajusta el tamaño de la imagen proporcionalmente
                                   height: geometry.size.width * 0.2)
                            .aspectRatio(contentMode: .fit)
                            .background(Color.white)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(hex: 0x323964), lineWidth: 4))
                        
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Ablemos")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(.white) // Texto visible sobre fondo azul
                            Text("Tú puedes!!")
                                .font(.title3)
                                .fontWeight(.light)
                                .foregroundColor(.white.opacity(0.8)) // Más tenue
                        }
                    }
                    .padding()
                }
            }
            .frame(height: 150) // Altura fija del header

            // Mensajes y entrada de texto
            VStack {
                // Lista de mensajes
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(messages) { message in
                            HStack {
                                if message.isFromCurrentUser {
                                    Spacer() // Empuja el mensaje hacia la derecha
                                    Text(message.text)
                                        .padding()
                                        .background(Color(hex: 0xFFAB13))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .frame(maxWidth: 250, alignment: .trailing)
                                } else {
                                    Text(message.text)
                                        .padding()
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(10)
                                        .frame(maxWidth: 250, alignment: .leading)
                                    Spacer() // Empuja el mensaje hacia la izquierda
                                }
                            }
                        }
                    }
                    .padding()
                }

                // Campo de entrada y botón de enviar
                HStack {
                    TextField("Escribe un mensaje...", text: $inputText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(minHeight: 40)

                    Button(action: sendMessage) {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(Color(hex: 0xFFAB13))
                            .padding(8)
                    }
                }
                .padding()
            }
        }
    }

    // Función para enviar un mensaje
    private func sendMessage() {
        guard !inputText.isEmpty else { return }
        messages.append(Message(text: inputText, isFromCurrentUser: true))
        inputText = "" // Limpia el campo de entrada
    }
}
