//
//  HeaderCalendario.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//


import Foundation
import SwiftUI

struct hederCalendario: View {
    var body: some View {
        HStack{
            VStack(alignment: .center, spacing: 10){
                Text("Calendario")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
        }.background(Color.blue)
        .padding()
    }
}
