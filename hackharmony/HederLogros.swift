//
//  HederLogros.swift
//  hackharmony
//
//  Created by CEDAM27 on 25/11/24.
//

//
import Foundation
import SwiftUI

struct hederlogros: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 10){
                Text("Logros")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Tu puedes")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Image("imagen")
        }.background(Color.blue)
        .padding()
    }
}
