//
//  ListView.swift
//  SwiftyUI project
//
//  Created by Нурсат Шохатбек on 13.01.2024.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var title = ""
    var year = ""
    var image = ""
    var about = ""
    
}

struct personRow: View {
    
    var person: Person
    
    var body: some View {
        HStack {
            
            Image(person.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
               .frame(width: 75.0)
            VStack(alignment: .leading) {
                Text(person.title)
                Text(person.year)
            }
        }
    }
}


struct ListView: View {
    
    var person = [Person(title: "Қызғалдақтар мекені ", year: "2020", image: "Image2", about: "Шытырман оқиғалы мультсериал Елбасының «Ұлы даланың жеті қыры» бағдарламасы аясында жүзеге асырылған. Мақалада қызғалдақтардың отаны Қазақстан екені айтылады. Ал, жоба қызғалдақтардың отаны – Алатау баурайы екенін анимация тілінде дәлелдей түседі."),
                  Person(title: "Суперкөлік Самұрық", year: "2020", image: "Image3", about: "Көліктер туралы оқиғалар айтады Олар адамдарға көмектеседі"),
                  Person(title: "Айдар", year: "2018", image: "Image4", about: "Бұл мультфильмде Батырлар жайлы түсірілен"),
                  Person(title: "Каникулы - offline", year: "2022", image: "Image5", about: "Бұл кино комедия жайлы")]
    
    var body: some View {
        NavigationView {
            List (person) { item in
                NavigationLink(destination: ContentView(person: item)) {
                    
                    personRow(person: item)
                }
            }
            .navigationTitle("List")
            
            
        }
        
       
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
