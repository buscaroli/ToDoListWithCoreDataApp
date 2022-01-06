//
//  SearchBarView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var newText: String = ""
    @ObservedObject var container: DBViewModel
    
    var body: some View {
        
        TextField("Insert text", text: $newText)
            .font(.title)
            .padding(.leading)
            .padding(.vertical, 20)
            .accentColor(.green)
            .foregroundColor(.black.opacity(0.6))
            .background(
                Rectangle()
                    .fill(LinearGradient(colors: [.yellow, .green], startPoint: .leading, endPoint: .trailing))
                    .shadow(color: .green.opacity(0.3), radius: 1, x: 5, y: 5)
                    
            )
            .onSubmit {
                guard !newText.isEmpty else { return }
                container.addNote(text: newText)
                newText = ""
            }
    }
}



//struct SearchBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBarView(container: )
//    }
//}
