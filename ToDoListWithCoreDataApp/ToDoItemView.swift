//
//  ToDoItemView.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

struct ToDoItemView: View {
    @State var text: String
    @State var itemColor: Color
    @State var completed: Bool
    
    var body: some View {
        HStack (spacing: -10){
            ZStack {
                Rectangle()
                    .fill(itemColor)
                    .shadow(color: itemColor.opacity(0.4), radius: 1, x: 5, y: 5)
                    .frame(width: .infinity, height: 80, alignment: .center)
                    .padding(.leading, 10)
                
                Text(text)
                    .font(.headline)
                    .foregroundColor(.black.opacity(0.7))
                    .padding()
                    .lineLimit(3)
                    
            }
            
            ZStack {
                Rectangle()
                    .fill(completed ? Color.green : Color.red)
                    .shadow(color: completed ? Color.green.opacity(0.4) : Color.red.opacity(0.4), radius: 1, x: 5, y: 5)
                    .frame(width: 80, height: 80, alignment: .center)
                    .padding()
                   
                
                Image(systemName: "cross.fill")
                    .font(.title)
                    .padding()
            }
        }
    }
}

struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(text: "Hi there, first note! Let's try to make this note longer. How long can i go? It should stop at the third line which is perfect", itemColor: Color.green, completed: false)
    }
}
