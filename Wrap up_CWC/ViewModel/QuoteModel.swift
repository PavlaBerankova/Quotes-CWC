//
//  QuoteModel.swift
//  Wrap up_CWC
//
//  Created by Pavla Beránková on 07.04.2023.
//

import Foundation

class QuoteModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
    
}
