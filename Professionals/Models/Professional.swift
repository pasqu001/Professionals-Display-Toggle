//
//  Professonal.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import Foundation

class Professional: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var address:String
    var company:String
    var yearsOfExperience:Int
    
}

