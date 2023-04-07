//
//  QuoteListView.swift
//  Wrap up_CWC
//
//  Created by Pavla Beránková on 07.04.2023.
//

import SwiftUI

struct QuoteListView: View {
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(model.quotes) { quote in
                    Text(quote.author)
                }
            }
            .navigationTitle("Quotes")
        }
       
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
