//
//  ContentView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: DBViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBarView()
                    .padding()
                    
                List {
                    ForEach(vm.noteList) { note in
                        ToDoItemView(note: note)
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
            .environmentObject(DBViewModel())
        }
}
