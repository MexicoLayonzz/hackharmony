//
//  Logros.swift
//  hackharmony
//
//  Created by CEDAM27 on 25/11/24.
//

import SwiftUI

struct logrosview: View {
    var body: some View {
        VStack{
            HeaderLogros()
            ScrollView{
                OpcionesGridview()
            }
        }
    }
}



struct ContentView_Prevew: PreviewProvider{
    static var previews: some View{
        logrosview()
    }
}
