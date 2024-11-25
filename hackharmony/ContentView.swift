//
//  ContentView.swift
//  hackharmony
//
//  Created by Fernando Aguilar on 25/11/24.
//

import SwiftUI

struct ContentView: View {
    var gradient = Gradient(colors: [.black, .black])
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .frame(width: 950, height: 500)
                .position(x: 200, y:-20)
            Image(systemName: "dog")
                .resizable()
                .padding()
                .frame(width: 250, height: 250)
                .aspectRatio(contentMode: .fit)
                .background(Color.white)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .position(x:200, y:190)
            
            Button(action:
            {
                print("Usuario")
            }, label:{
                
                Image("usuario 1")
                    
                    .resizable()
                    .padding()
                    .frame(width: 70, height: 70)
                    .background(Color.black)
                    .cornerRadius(10)
            })
            .position(x:200, y:290)
            
            Button(action:
            {
                print("Usuario")
            }, label:{
                
                Text("Usuario".uppercased())
                    .font(.title2)

                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                    .position(x:200, y:350)
            })
            
            
            
        }
        Text("¿Qué haremos hoy?")
        HStack
        {
            
            Button(action: {
                print("Mira tus logros")
                
            }, label: {
                
                Text("Logros".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
                
            })
            .cornerRadius(10)
            
            Button(action: {
                print("Hora de relajarce")
                
            }, label: {
                
                Text("Meditar".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                
            })
            
            Button(action: {
                print("Hora de jugar")
                
            }, label: {
                
                Text("Juguemos".uppercased())
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                
            })
        }
        Spacer()
        
        ZStack
        {
            LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing)
            Button("¿Quieres hablar?")
            {
                
            }
            .buttonStyle(.bordered)
            .cornerRadius(3.0)
            .background(Color.orange)
            .foregroundColor(Color.white)
        }
        .edgesIgnoringSafeArea(.all)
        .frame(height: 100)
        .border(Color.black)

    }
}

struct CustomTabs: View
{
    @Binding var index: Int
    var body: some View
    {
        HStack
        {
            Button(action: {
                self.index = 0
                
            }) { Image(systemName: "homekit") }
            
            Button(action: {
                self.index = 1
                
            }) { Image(systemName: "heart") }
            
            Button(action: {
                self.index = 2
                
            }) { Image(systemName: "dog.fill") }
            
            Button(action: {
                self.index = 3
                
            }) { Image(systemName: "homekit") }
            
            
            
        }
    }
}

#Preview {
    ContentView()
}
