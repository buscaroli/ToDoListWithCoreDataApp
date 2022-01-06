//
//  ToDoItemView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ToDoItemView: View {
    @State var note: ToDoEntity
    @ObservedObject var model: DBViewModel
    
    var body: some View {
        HStack {
            Text(note.text ?? "Forgotten something?")
                .font(.headline)
                .foregroundColor(.primary.opacity(0.7))
                .padding()
//                .lineLimit(3)
 
            Spacer()
                      
            Image(systemName: note.completed ? "checkmark" : "xmark")
                .font(.largeTitle)
                .foregroundColor(note.completed ? .green : .red)
                .padding()
                
   
        }
        .contentShape(Rectangle())
        .onTapGesture {
//            print(model.noteList)
            model.updateCompletion(entity: note)
        }
        
    }
}

//struct ToDoItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ToDoItemView(note: [])
//    }
//}
