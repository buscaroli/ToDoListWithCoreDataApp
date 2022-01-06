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
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(itemColor)
                .shadow(color: itemColor.opacity(0.4), radius: 1, x: 8, y: 8)
                .frame(width: .infinity, height: 200, alignment: .center)
                .padding()
            
            Text(text)
                .font(.title)
                .foregroundColor(.black.opacity(0.7))
                .padding()
                .lineLimit(4)
                
        }
        
    }
}

struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(text: "Hi there, first note!", itemColor: Color.green)
    }
}
