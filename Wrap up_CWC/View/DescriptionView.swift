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
        VStack(alignment: .leading, spacing: 20) {
            Text(description.author)
                .font(.title)
                .bold()
                .padding(.top, 30)
            
            ForEach(0..<description.quotes.count, id: \.self) { index in
                Text(description.quotes[index])
                    .font(.title2)
            }
            Spacer()
        }
        .padding(.horizontal, 30)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        DescriptionView(description: model.quotes[1])
    }
}
