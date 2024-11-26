//
//  Tareas.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//

import SwiftUI

struct Tareassview: View {
    var body: some View {
        VStack{
            hederTareas()
            ScrollView{
            TareasGridview()
            }
        }
    }
}



struct TareasView_Previews: PreviewProvider{
    static var previews: some View{
        Tareassview()
    }
}

