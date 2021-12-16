//
//  SearchExampleView.swift
//  WordReferenceApp
//
//  Created by Chiara Gentile on 15/12/21.
//

import SwiftUI

struct SearchExampleView: View {
    
    @State var isFavorite = false
    
    @State var selectedAccent = "UK"
    
    
    var body: some View {
        

//        NavigationView{
        ScrollView {
            
            VStack(spacing: 18) {
                Group {
                    HStack(spacing: 300){
                        Text("Try")
                            .font(.title)
                            .fontWeight(.bold)
                    
                            Button(action: {
                                isFavorite.toggle()

                            }) {
                                Image(systemName: isFavorite ? "star.fill": "star")
                                .foregroundColor(Color(.systemIndigo))
                            }
                        }

                    VStack(spacing: 15) {
                    Text("UK:* /‘traɪ/, US: /traɪ/")
                        .foregroundColor(Color(.systemIndigo))
                        .padding(.leading, -170)
                    
                    HStack(spacing: 10) {
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "speaker.wave.2.fill")
                                .foregroundColor(Color(.systemIndigo))
                        }
                        
                        
                        Picker("Accent", selection: $selectedAccent) {
                            Text("UK") .tag("UK")
                            Text("US").tag("US")
                            Text("UK RP").tag("UK RP")
                            Text("Irish").tag("Irish")
                            
                        }
                        
                        .pickerStyle(.menu)
                        .font(.system(size: 22, weight: .semibold))
                        
                    }
                    .padding(.leading, -150)
                    
                    ZStack{
                        Text("Inflections of 'try':")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.leading, -180)
                        
                        Text("tries\ntrying\ntried\ntried")
                            .font(.subheadline)
                            .multilineTextAlignment(.trailing)
                            .padding(EdgeInsets(top: 60, leading: -30, bottom:0, trailing: 0))
                        
                        Text("v 3rd person singular\nv pres p\nv past\nv past p")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                            .padding(EdgeInsets(top: 60, leading: 200, bottom: 0, trailing: 0))
                            .foregroundColor(Color(.systemIndigo))
                    }
                }
            .frame(width: 380, height: 250)
                            .background(
                            Rectangle()
                                .fill(Color(hue: 0.652, saturation: 0.092, brightness: 1.0))
                                .cornerRadius(13)
//                                .shadow(color: .gray, radius: 8, x: 0.0, y: 5.0)
            
                            )
//                VStack(spacing: 15) {
//                    HStack(spacing: 10){
//                    Text("try [sth]")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                        .padding(.leading, -180)
//                    Text("vtr")
//                        .font(.subheadline)
//                        .italic()
//                        .foregroundColor(Color(.systemIndigo))
//                        .padding(.leading, -90)
//                    }
//                    Text("attempt [sth]")
//                        .font(.subheadline)
//                        .foregroundColor(Color(.systemIndigo))
//                        .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
//                    HStack{
//                        Text("provare")
//                            .font(.title3)
//                            .fontWeight(.semibold)
//                            .padding(EdgeInsets(top: -10, leading: -130, bottom: 0, trailing: 0))
//                        Text("vtr")
//                            .font(.subheadline)
//                            .italic()
//                            .foregroundColor(Color(.systemIndigo))
//                            .padding(EdgeInsets(top: -10, leading: -60, bottom: 0, trailing: 0))
//                    }
//                    Text("Have you ever tried bungee jumping?")
//                        .font(.subheadline)
//                        .italic()
//                        .foregroundColor(Color(.systemIndigo))
//
//                    Text("Hai mai provato il bungee jumping?")
//                        .font(.subheadline)
//                        .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
//            }
//                .frame(width: 380, height: 250)
//                .background(
//                Rectangle()
//                    .fill(Color(hue: 0.652, saturation: 0.092, brightness: 1.0))
//                    .cornerRadius(13)
//                    .shadow(color: .gray, radius: 8, x: 0.0, y: 5.0)
//
//                )
//
//
                
        //        .cornerRadius(13)
                
                VStack(spacing:15) {
                Group{
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
                        //                        .padding(EdgeInsets(top: 0, leading: -90, bottom: 0, trailing: 0))
                    }
                    
                    
                    Text("attempt [sth]")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemIndigo))
                        .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
                }
                Group {
                    HStack{
                        Text("provare")
                            .font(.title3)
                            .fontWeight(.medium)
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
                }
                
//                .frame(width: 400, height: 250)
//                .overlay(RoundedRectangle(cornerRadius: 13))
//                .background(.white)
               
//                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                
                
                
//                .cornerRadius(13)
                
//                 .overlay(RoundedRectangle(cornerRadius: 10)
                //                        .stroke(Color.gray, lineWidth: 1))
                    
                    Divider ()
                    VStack(spacing: 15) {
                    HStack{
                        Text("try to do [sth]")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, -180)
                        Text("v expr")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: -40, bottom: 0, trailing: 0))
                    }
                    Text ("strive")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemIndigo))
                        .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
                    HStack {
                        Text("cercare, tentare di fare [qlcs]")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("vtr")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                    }
                    
                
                
                
                Group {
                    HStack {
                        Text("provare a fare [qlcs]")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("vtr")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    Text("I try to do my best.")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(Color(.systemIndigo))
                    Text("Io cerco di fare del mio meglio.")
                        .font(.subheadline)
                        .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
                }
                    }
                    Divider ()
                   
                    VStack(spacing: 15) {
                    HStack{
                        Text("try doing [sth]")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, -170)
                        Text("v expr")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: 0))
                    }
                    Text ("test an effect")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemIndigo))
                        .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
                    HStack {
                        Text("provare a fare [qlcs]")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("vtr")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    Text("Try playing the music softly, and you may hear the violins in the background.")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(Color(.systemIndigo))
                        .lineSpacing(8)
                        .frame(width: 315)
                    Text("Prova ad ascoltare questa musica a volume basso, e potrai sentire i violini in sottofondo.")
                        .font(.subheadline)
                        .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
                        .lineSpacing(8)
                        .frame(width: 310)
                }
                    Divider ()
                    
                    VStack(spacing: 15) {
                    HStack{
                        Text("try")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, -180)
                        Text("n")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: -150, bottom: 0, trailing: 0))
                    }
                    Text ("effort")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemIndigo))
                        .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
                    HStack {
                        Text("tentativo")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(EdgeInsets(top: 0, leading: -90, bottom: 0, trailing: 0))
                        Text("nm")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                    }
                    Text("Is that your best try?")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(Color(.systemIndigo))
                        .lineSpacing(8)
                        .frame(width: 315)
                    Text("Questo è il tuo miglior tentativo?")
                        .font(.subheadline)
                        .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
                        .lineSpacing(8)
                        .frame(width: 310)
                }
                    Group {
                    Divider ()
                    
                    VStack(spacing: 15) {
                    HStack{
                        Text("try [sth] out")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, -160)
                        Text("vtr phrasal")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: -30, bottom: 0, trailing: 0))
                    }
                    Text ("test by using")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemIndigo))
                        .padding(EdgeInsets(top: -10, leading: -150, bottom: 0, trailing: 0))
                    HStack {
                        Text("provare")
                            .font(.title3)
                            .fontWeight(.medium)
                            .padding(EdgeInsets(top: 0, leading: -90, bottom: 0, trailing: 0))
                        Text("vtr")
                            .font(.subheadline)
                            .italic()
                            .foregroundColor(Color(.systemIndigo))
                            .padding(EdgeInsets(top: 0, leading: -10, bottom: 0, trailing: 0))
                    }
                    Text("The salesman let us try out the bicycle before deciding wheter to buy it.")
                        .font(.subheadline)
                        .italic()
                        .foregroundColor(Color(.systemIndigo))
                        .lineSpacing(8)
                        .frame(width: 310)
                    Text("Il venditore ci ha fatto provare la bicicletta prima di acquistarla.")
                        .font(.subheadline)
                        .padding(EdgeInsets(top: -10, leading: 0, bottom: 0, trailing: 0))
                        .lineSpacing(8)
                        .frame(width: 310)
                }
                    }
            }
            .padding(.all)
            .accentColor(.indigo)
            
        }
    }
    }
    
    struct SearchExampleView_Previews: PreviewProvider {
        static var previews: some View {
            SearchExampleView()
        }
    }
}

