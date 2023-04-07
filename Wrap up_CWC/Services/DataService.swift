//
//  DataService.swift
//  Wrap up_CWC
//
//  Created by Pavla Beránková on 07.04.2023.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
            
        let url = URL(fileURLWithPath: pathString!)
        
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    let quoteData = try decoder.decode([Quote].self, from: data)
                    for q in quoteData {
                        q.id = UUID()
                    }
                    return quoteData
                    
                } catch {
                    print(error)
                }
            } catch {
                print(error)
            }
        return [Quote]()
    }
}
