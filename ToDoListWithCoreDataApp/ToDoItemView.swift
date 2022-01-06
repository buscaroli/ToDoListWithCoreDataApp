//
//  ToDoItemView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ToDoItemView: View {
    @State var note: ToDoEntity
    
    var body: some View {
        HStack (spacing: -10){
            ZStack {
                Rectangle()
                    .fill(.yellow)
                    .shadow(color: .yellow.opacity(0.4), radius: 1, x: 5, y: 5)
                    .frame(height: 80)
                    .padding(.leading, 10)
                
                Text(note.text ?? "Forgotten something?")
                    .font(.headline)
                    .foregroundColor(.black.opacity(0.7))
                    .padding()
                    .lineLimit(3)
                    
            }
            
            ZStack {
                Rectangle()
                    .fill(note.completed ? Color.green : Color.red)
                    .shadow(color: note.completed ? Color.green.opacity(0.4) : Color.red.opacity(0.4), radius: 1, x: 5, y: 5)
                    .frame(width: 80, height: 80, alignment: .center)
                    .padding()
                   
                
                Image(systemName: note.completed ? "checkmark" : "xmark")
                    .font(.largeTitle)
                    .padding()
                    
            }
        }
        
    }
}

//struct ToDoItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ToDoItemView(note: [])
//    }
//}
