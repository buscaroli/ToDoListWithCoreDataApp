//
//  ToDoListWithCoreDataAppApp.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import SwiftUI

@main
struct ToDoListWithCoreDataAppApp: App {
    
    @StateObject var vm = DBViewModel()
    
    var body: some Scene {
        WindowGroup {
                ContentView()
                .environmentObject(vm)
        }
        
    }
}
