//
//  LanguageListView.swift
//  WordReferenceApp
//
//  Created by Chiara Gentile on 15/12/21.
//

import SwiftUI



struct LanguageListView: View {
    
    

    var languages = ["English-Italian", "Italian-English", "Spanish-English", "English-Spanish", "English definition","English synonyms", "English usage", "English collocations", "English conjugations", "Spanish - French", "Spanish - Portuguese", "Spanish - Italian", "Spanish - German", "Spanish - Catalan", "Spanish definition", "Spanish synonyms", "Italian conjugations", "Italian - Spanish", "Spanish - Italian", "Italian definition", "Italian conjugations"]
   
    @State var selectedOption: String? 
    
    var body: some View {
   
        
//            List(languages, id: \.self)  {
//                Button(action: {})
//                    .onTapGesture {
//                        optionLanguages = $optionLanguages
//                    }
//
//            }

        
        List {
            ForEach(languages, id: \.self) { language in SelectionRow(title: language, selectedOption: $selectedOption)}
        }
        
//        List(languages, id: \.self)  {
//                string in Text(string)
//                .onTapGesture {
//                    optionLanguages = string
//
//                }
//        }
//            if (isChecked == true)
//                                   {
//            Button(action: {
//                isChecked.toggle()
//
//            })
//                {
//                    Image(systemName: "checkmark")
//                }
//            }
//
//        }
//        Spacer()
//
//        if (isChecked == false)
//                               {
//        Button(action: {
//            isChecked.toggle()
//
//        })
//            {
//                Image(systemName: "checkmark")
//            }
//        }
        
//        List {
//            Section(header: Text("Italian")) {
//                HStack {
//
//                Button (action: {}) {
//                    Text ("English - Italian")
//                        .foregroundColor(.black)
//                }
//                    Spacer ()
//                    Image (systemName: "checkmark")
//                        .foregroundColor(.indigo)
//                }
//                Text ("Italian - English")
//                Text ("Italian - Spanish")
//                Text ("Spanish - Italian")
//                Text ("Italian definition")
//                Text ("Italian conjugations")
//            }
//            Section(header: Text("English monolingual")) {
//                Text ("English definition")
//                Text ("English synonyms")
//                Text ("English definition")
//                Text ("English usage")
//                Text ("English collocations")
//                Text ("English conjugations")
//            }
//            Section(header: Text("Spanish")) {
//                Text ("English - Spanish")
//                Text ("Spanish - English")
//                Text ("Spanish - French")
//                Text ("Spanish - Portuguese")
//                Text ("Spanish - Italian")
//                Text ("Spanish - German")
//                Text ("Spanish - Catalan")
//                Text ("Spanish definition")
//                Text ("Spanish synonyms")
//                Text ("Italian conjugations")
//            }
//        }
    }
}



struct LanguageListView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageListView(selectedOption: "selectedOption")
    }
}
