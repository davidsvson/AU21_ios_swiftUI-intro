//
//  ContentView.swift
//  SwiftUI-intro
//
//  Created by David Svensson on 2021-12-14.
//

import SwiftUI

struct ContentView: View {
    var persons = [ Person(firstName: "David", lastName: "Svensson"),
                    Person(firstName: "Susan", lastName: "Svensson"),
                    Person(firstName: "Lois", lastName: "Svensson"),
                    Person(firstName: "Laura", lastName: "Svensson")
                    ]
    
    
    var body: some View {
        VStack {
            
            Text("Hello, world!!!").fontWeight(.bold).padding()
    
            HStack {
                Text("hej")
                Text("allihop ")
            }
            
//            List() {
//                ForEach(persons) { person in
//                    Text("\(person.firstName)")
//                }
//
//            }
            
            List(persons) {
                person in
                
                PersonView(person: person)
            }
            
            
            
//            List() {
//                ForEach(1...100 , id: \.self) {
//                    i in
//                    Text("hej \(i)")
//                }
//            }
            
        }
    }
}



struct PersonView : View {
    var person : Person

    var body: some View {
        HStack {
            
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 30, height: 30, alignment: .center)
                Image(systemName: "person.circle")
            }
        
            VStack(alignment: .trailing) {
                Text(person.firstName)
                Text(person.lastName)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //PersonView(person: Person(firstName: "David", lastName: "Svensson"))
    }
}
