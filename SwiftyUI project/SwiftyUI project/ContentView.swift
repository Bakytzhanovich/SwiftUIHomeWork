//
//  ContentView.swift
//  SwiftyUI project
//
//  Created by Нурсат Шохатбек on 13.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    var person: Person
    
    @State var a = ""
    
    @State var b = ""

    var body: some View {
        VStack {
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175.0, height: 175.0)
             
                Text(person.title)
                .padding(.vertical)
                 Text(person.year)
                .padding(.bottom)
                 Text(person.about)
            
            
            TextField("Enter a", text: $a)
            
                .padding(.all)
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            TextField("Enter b", text: $b)
            
                .padding(.all)
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            
          
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(person: Person(title: "Қызғалдақтар мекені ", year: "2020", image: "Image2", about: "Шытырман оқиғалы мультсериал Елбасының «Ұлы даланың жеті қыры» бағдарламасы аясында жүзеге асырылған. Мақалада қызғалдақтардың отаны Қазақстан екені айтылады. Ал, жоба қызғалдақтардың отаны – Алатау баурайы екенін анимация тілінде дәлелдей түседі."))
    }
}
