//
//  ContentView.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import SwiftUI

struct ProfessionalTabView: View {
    var body: some View {

        TabView {
            
            ProfessionalListView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2.fill")
                        Text("Featured")
                    }
                }
            
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text("List")
                    }
                }
        }
        
        
        
        
        
    }
}

struct ProfessionalTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfessionalTabView()
    }
}
