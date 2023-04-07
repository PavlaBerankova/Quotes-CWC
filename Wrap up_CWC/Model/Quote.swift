//
//  Quote.swift
//  Wrap up_CWC
//
//  Created by Pavla Beránková on 07.04.2023.
//

import Foundation

class Quote: Identifiable, Codable {
    
    var id:UUID?
    var author: String
    var title: String
    var quotes: [String]
}
