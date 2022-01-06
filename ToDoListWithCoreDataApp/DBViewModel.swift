//
//  DBViewModel.swift
//  ToDoListWithCoreDataApp
//
//  Created by Matteo on 06/01/2022.
//

import Foundation
import CoreData

class DBViewModel: ObservableObject {
    
    let container: NSPersistentContainer
    
    @Published var noteList: [ToDoEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "ToDoCoreDataModel")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                print("Error:\n \(error)")
            } else {
                print("Core Data running...")
            }
        }
        fetchNotes()
    }
    
    func fetchNotes() {
        let request = NSFetchRequest<ToDoEntity>(entityName: "ToDoEntity")
        
        do {
            noteList = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching data from Core Data.\n \(error)")
        }
    }
    
    func addNote(text: String) {
        let note = ToDoEntity(context: container.viewContext)
        
        note.id = UUID().uuidString
        note.text = text
        note.completed = false
        saveData()
    }
    
    func deleteNote(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let entity = noteList[index]
        container.viewContext.delete(entity)
        saveData()
        
    }
    
    func toggleCompleted(entity: ToDoEntity) {
        entity.completed.toggle()
        saveData()
    }
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchNotes() // to update the View
        } catch let error {
            print("Error saving data:\n \(error)")
        }
    }
}
