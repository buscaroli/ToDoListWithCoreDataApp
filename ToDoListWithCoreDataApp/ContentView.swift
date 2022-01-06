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
            VStack {
                SearchBarView(container: vm)
                    .padding()
                    
                List {
                    ForEach(vm.noteList) { note in
                        ToDoItemView(note: note, model: vm)
                    }
                    .onDelete(perform: vm.deleteNote)
                }
                .listStyle(.plain)
            }
            .navigationTitle(Text("Things to do!"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
}
