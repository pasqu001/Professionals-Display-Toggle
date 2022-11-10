//
//  ProfessionalsApp.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import SwiftUI

@main
struct ProfessionalsApp: App {
    var body: some Scene {
        WindowGroup {
            ProfessionalTabView()
                .environmentObject(ProfessionalModel())
        }
    }
}
