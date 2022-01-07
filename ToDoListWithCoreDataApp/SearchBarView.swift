//
//  SearchBarView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var newText: String = ""
    @EnvironmentObject var vm: DBViewModel
    
    var body: some View {
        
        TextField("What do you need to do?", text: $newText)
            .font(.title)
            .padding()
            .foregroundColor(.black.opacity(0.6))
            .textFieldStyle(.roundedBorder)
            .onSubmit {
                guard !newText.isEmpty else { return }
                vm.addNote(text: newText)
                newText = ""
            }
    }
}


struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .environmentObject(DBViewModel())
    }
}
