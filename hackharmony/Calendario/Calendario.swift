//
//  Calendario.swift
//  hackharmony
//
//  Created by CEDAM27 on 26/11/24.
//

import SwiftUI

struct calendarioview: View {
    var body: some View {
            VStack{
                hederCalendario()
                ScrollView{
                CalendarioView()
                }
            }
    }
}



struct CalendarioView_Previews: PreviewProvider{
    static var previews: some View{
        calendarioview()
    }
}
