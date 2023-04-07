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
                    ForEach(model.quotes) { item in
                        NavigationLink {
                            DescriptionView(description: item)
                        } label: {
                            QuoteView(quote: item)
                        }
                    }
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
