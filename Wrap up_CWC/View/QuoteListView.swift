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
                VStack {
                    ForEach(model.quotes) { quote in
                        QuoteView(quote: quote)
                    }
                }
            }
        }
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
