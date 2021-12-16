//
//  ExampleTryView.swift
//  WordReferenceApp
//
//  Created by Chiara Gentile on 15/12/21.
//

import SwiftUI

struct ExampleTryView: View {
    var body: some View {
        VStack(spacing: 15) {
            HStack(spacing: 10){
            Text("try [sth]")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.leading, -180)
            Text("vtr")
                .font(.subheadline)
                .italic()
                .foregroundColor(Color(.systemIndigo))
                .padding(.leading, -90)
            }
            Text("attempt [sth]")
                .font(.subheadline)
                .foregroundColor(Color(.systemIndigo))
                .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
            HStack{
                Text("provare")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(EdgeInsets(top: -10, leading: -130, bottom: 0, trailing: 0))
                Text("vtr")
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(Color(.systemIndigo))
                    .padding(EdgeInsets(top: -10, leading: -60, bottom: 0, trailing: 0))
            }
            Text("Have you ever tried bungee jumping?")
                .font(.subheadline)
                .italic()
                .foregroundColor(Color(.systemIndigo))
            
            Text("Hai mai provato il bungee jumping?")
                .font(.subheadline)
                .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
    }
        .frame(width: 380, height: 250)
        .background(
        Rectangle()
            .fill(Color(hue: 0.652, saturation: 0.092, brightness: 1.0))
            .cornerRadius(13)
            .shadow(color: .gray, radius: 7, x: 0.0, y: 7.0)
        
        )
//        .cornerRadius(13)
        
        
        
    }
}

struct ExampleTryView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleTryView()
    }
}
