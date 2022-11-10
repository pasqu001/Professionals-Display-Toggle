//
//  ProfessionalModel.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import Foundation

class ProfessionalModel: ObservableObject {
    
   @Published var prof = [Professional]()
    
    @Published var OnAdress = true
    @Published var OnCompany = true
    @Published var OnYears = true
    @Published var OnName = true
    
    init() {
        //create an instance of dataService and get the data
        let service = DataService()
        
        self.prof = service.getLocalData()
        
    }
}
