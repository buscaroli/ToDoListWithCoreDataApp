//
//  ContentView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = DBViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 244/255, green: 247/255, blue: 215/255)
                    .ignoresSafeArea()
                
                VStack {
                    Rectangle()
                        .frame(height: 0)
                        .background(LinearGradient(colors: [Color(red: 245/255, green: 221/255, blue: 115/255), Color(red: 94/255, green: 214/255, blue: 34/255)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    
                    SearchBarView(container: vm)
                        .padding()
                        
                    
                    List {
                        ForEach(vm.noteList) { note in
                            ToDoItemView(note: note)
                        }
                        .onDelete(perform: vm.deleteNote)
                        .listStyle(.plain)
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
