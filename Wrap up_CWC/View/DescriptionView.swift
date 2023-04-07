//
//  DescriptionView.swift
//  Wrap up_CWC
//
//  Created by Pavla Beránková on 07.04.2023.
//

import SwiftUI

struct DescriptionView: View {
    var description: Quote
    
    var body: some View {
        Text(description.description[0])
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        DescriptionView(description: model.quotes[0])
    }
}
