//
//  QuoteDetailView.swift
//  Wrap up_CWC
//
//  Created by Pavla Beránková on 07.04.2023.
//

import SwiftUI

struct QuoteView: View {
    
    var quote: Quote
    
    var body: some View {
        ZStack {
            Image(quote.image)
                .resizable()
                .frame(width: .infinity, height: 450)
                .cornerRadius(20)
                .padding(.horizontal, 15.0)
            VStack(alignment: .leading) {
                Text(quote.title)
                    .padding(.horizontal, 30)
                    .font(.largeTitle).bold()
                    .shadow(color: .black, radius: 1, x: 0, y: 2)
                    .foregroundColor(.white)
                    
                Text("- " + quote.author)
                    .padding(.horizontal, 30.0)
                    .padding(.top, 5)
                    .foregroundColor(.white)
                    .font(.title2)
            }
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        QuoteView(quote: model.quotes[0])
    }
}
