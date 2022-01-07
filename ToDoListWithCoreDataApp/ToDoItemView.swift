//
//  ToDoItemView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ToDoItemView: View {
    @State var note: ToDoEntity
    @EnvironmentObject var vm: DBViewModel
    
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

            vm.updateCompletion(entity: note)
        }
        
    }
}



//struct ToDoItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        let context = ToDoEntity.context
//        
//        ToDoItemView()
//            .environment(\.managedObjectContext, context)
//    }
//    
//}
