//
//  DataService.swift
//  Professionals
//
//  Created by Kasey Pasqualini on 11/9/22.
//

import Foundation

class DataService {
    
    func getLocalData() -> [Professional]{
        
        //parse local json file
        //Step 1 -> get a url path to the json file
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        //check if pathString is not nil otherwise return empty recipe list
        guard pathString != nil else {
            return [Professional]()
        }
        
        //Step 2 -> create a url object
             //bc we check above that it is not nil we can safely unwrap it with a !
        
        let url = URL(fileURLWithPath: pathString!)
        
        //Step 3 -> create a data object
        
        do {
            
            let data = try Data(contentsOf: url)
            
            
            //Step 4 -> Decode the data with JSON decoder
            
            let decoder = JSONDecoder()
            
            do {
                
                let professionalData = try decoder.decode([Professional].self, from: data)
                
                //Step 5 -> Add unique ID's
                
                for r in professionalData {
                    r.id = UUID()
                    
                }
                
                //Step 6 -> Return the recipes
                return professionalData
            }
            catch{
                //error with parsing JSON
                
                print(error)
                
            }
    
        }
        catch{
            //error with getting data
            
            print(error)
        }
        
       return [Professional]()
        
    }
}

