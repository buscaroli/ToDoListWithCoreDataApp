//
//  ContentView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 244/255, green: 247/255, blue: 215/255)
                    .ignoresSafeArea()
                
                VStack {
                    Rectangle()
                        .frame(height: 0)
                        .background(LinearGradient(colors: [Color(red: 245/255, green: 221/255, blue: 115/255), Color(red: 94/255, green: 214/255, blue: 34/255)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    
                    ScrollView {
                        ToDoItemView(text: "Hi there, first To-Do here", itemColor: Color.yellow, completed: true)
                        ToDoItemView(text: "Second", itemColor: Color.green, completed: true)
                        ToDoItemView(text: "And third", itemColor: Color.pink, completed: false)
                        ToDoItemView(text: "That's another one for you", itemColor: Color.green, completed: true)
                        ToDoItemView(text: "Walk the dog", itemColor: Color.yellow, completed: false)
                    }
                }
                
            }
            
            .navigationTitle(Text("Your List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
}
