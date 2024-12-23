import SwiftUI

struct ContentView: View {
    var gradient = Gradient(colors: [Color(hex: 0x323964), Color(hex: 0x323964)])
    @State private var isActive = true
    var body: some View {
        
        if isActive
        {
            ZStack(alignment: .center) {
                Circle()
                    .foregroundStyle(Color(hex: 0x323964))
                    .frame(width: 950, height: 500)
                    .position(x: 200, y: -20)
                
                Image("5")
                    .resizable()
                    .padding()
                    .frame(width: 250, height: 250)
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(hex: 0x323964), lineWidth: 4))
                    .position(x: 200, y: 190)
                
                Button(action: {
                    print("Juan")
                }, label: {
                    Image("usuario 1")
                        .resizable()
                        .padding()
                        .frame(width: 70, height: 70)
                        .background(Color(hex: 0x323964))
                        .cornerRadius(10)
                })
                .position(x: 200, y: 320)
                
                Button(action: {
                    print("Usuario")
                }, label: {
                    Text("Juan Pérez".uppercased())
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color(hex: 0x323964))
                        .cornerRadius(10)
                        .position(x: 200, y: 370)
                })
                
                VStack(alignment: .center) {
                    Text("¿Qué haremos hoy?".uppercased())
                        .fontWeight(.bold)
                        .foregroundStyle(Color(hex: 0x323964))
                    HStack {
                        Button(action: {isActive = false}, label: {
                            Text("Logros".uppercased())
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
                        
                        Button(action: {
                            isActive = false
                        }, label: {
                            Text("Meditar".uppercased())
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
                        
                        Button(action: {
                            isActive = false
                        }, label: {
                            Text("Agenda".uppercased())
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
                    }
                    .padding()
                }
                .position(x: 200, y: 500)
            }
            
            
            HStack(alignment: .bottom) {
                Spacer()
                Button(action: {isActive = false}, label: {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color(hex: 0xFFAB13))
                        .cornerRadius(10)
                })
                .padding()
                
                Button(action: {isActive = false}, label: {
                    Image(systemName: "book.pages.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color(hex: 0x323964))
                        .cornerRadius(10)
                })
                .padding()
            }
            
            Spacer()
            
            ZStack {
                LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
                Button("¿Quieres hablar?") {
                    
                }
                .frame(width: 300, height: 50)
                .background(Color(hex: 0xFFAB13))
                .cornerRadius(20)
                .foregroundColor(Color.white)
                .font(.title)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 3)
                )
                
            }
            .edgesIgnoringSafeArea(.all)
            .frame(height: 100)
            .border(Color(hex: 0x323964))
        }else{
            Nav()
        }
    }
}

#Preview {
    ContentView()
}

extension Color {
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff)) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
