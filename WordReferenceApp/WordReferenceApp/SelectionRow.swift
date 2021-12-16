//
//  SelectionRow.swift
//  WordReferenceApp
//
//  Created by Chiara Gentile on 15/12/21.
//

import SwiftUI

struct SelectionRow: View {
   
    let title: String
    @Binding var selectedOption: String?
    
    var body: some View {
        
        HStack{
            Text(title)
            Spacer()
            if title == selectedOption {
                Image(systemName: "checkmark")
                    .foregroundColor(.indigo)
            }
        }
        .contentShape(Rectangle())
        .onTapGesture {
            self.selectedOption = self.title
        }
    }
}

struct SelectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SelectionRow(title: "NoName", selectedOption: .constant("NoName"))
    }
}
