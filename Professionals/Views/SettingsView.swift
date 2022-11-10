//
//  SettingsView.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var model:ProfessionalModel
    
    var body: some View {
        
        VStack {
            
            Text("Display Preferences")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Toggle(isOn: $model.OnName) {
                    Text("Show Name: ")
            }
            Toggle(isOn: $model.OnAdress) {
                    Text("Show Address: ")
            }
            Toggle(isOn: $model.OnCompany) {
                    Text("Show Company: ")
            }
            Toggle(isOn: $model.OnYears) {
                    Text("Show Years of Experience: ")
            }
            Spacer()
        }.padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
