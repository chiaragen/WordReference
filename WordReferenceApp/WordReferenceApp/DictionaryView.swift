//
//  DictionaryView.swift
//  WordReferenceApp
//
//  Created by Chiara Gentile on 15/12/21.
//

import SwiftUI

struct DictionaryView: View {
    
    
    @State var searchText = ""
//    @State var selectedVocabulary = "English - Italian"
    @State var selectedVocabulary = "WordReference"
    @State var selectionAccent = ""
    @State var optionLanguage = ""
  @State var selectedOption = ""
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 15){
            
                Picker("Vocabulary", selection: $selectedVocabulary) {
                    Text("WordReference") .tag("WordReference")
                    Text("Collins").tag("Collins")
                    Text("WR Reverse").tag("WR Reverse")
                }
                .pickerStyle(.segmented)
                .padding()
                
                

                       
                List {

//                    selectedLanguage: $selectedLanguage
                    
                    
                    NavigationLink(destination: LanguageListView(
                        selectedOption: "selectedOption"
                    )) {
                        Label (title: {Text("Languages")
                            .fontWeight(.semibold)}, icon:{Image(systemName: "book")})
                    }
                    .font(.system(size: 20))
                    .foregroundColor(Color(.systemIndigo))
                    
                    
                }
                .listStyle(.plain)
                .padding()
                
                               
                
//                \(selectedOption)
//                Text("Dictionary \(selectedOption)")

                
                Text("Recent searches")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(EdgeInsets(top: 0, leading: -180, bottom: 30, trailing: 0))
                VStack(alignment: .leading, spacing: 8){
                    NavigationLink(destination: SearchExampleView()){
                        Text("try")
                            .font(.title3)
                            .foregroundColor(Color(.systemIndigo))
                        //                .padding(.leading)
                    }
                    Text("lorem")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    //                        .padding(.leading, -180)
                    Text("ipsum")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("dolor")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("sit")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("amet")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("consectetur")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("adipiscing")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("elit")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    
                    Text("sed")
                        .font(.title3)
                        .foregroundColor(Color(.systemIndigo))
                    //                    .padding(.leading, -180)
                }
                .padding(EdgeInsets(top: 0, leading: -180, bottom: 60, trailing: 0))
                .searchable(text: $searchText)
            } .navigationTitle("Dictionary")
//                .padding(.all)
                
        }
        
    }
    
}



//                    NavigationLink(destination: SearchExampleView()){
//                        Text("try").searchCompletion("try")




struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

