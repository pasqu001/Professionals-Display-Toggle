//
//  ProfessionalListView.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import SwiftUI

struct ProfessionalListView: View {
    
    @EnvironmentObject var model:ProfessionalModel
    
    var body: some View {
        VStack {
            Text("Professionals")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            List(model.prof){ p in
                VStack{
                    if (model.OnName){
                        Text(p.name).frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if (model.OnAdress){
                        Text(p.address).frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if (model.OnCompany) {
                        Text(p.company).frame(maxWidth: .infinity, alignment: .leading)
                    }
                    if (model.OnYears){
                        Text(String(p.yearsOfExperience)).frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
        }
    }
}

struct ProfessionalListView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalListView()
    }
}
