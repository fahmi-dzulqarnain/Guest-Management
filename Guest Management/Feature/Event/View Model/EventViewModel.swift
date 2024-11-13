//
//  EventViewModel.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import RealmSwift
import SwiftUI

final class EventViewModel: ObservableObject, RealmInstance {
    
    @Published var events: Results<Event>?
    
    init() {
        self.events = realmDB.objects(Event.self)
    }
    
    func saveEvent(
        name: String,
        date: Date,
        notes: String = ""
    ) {
        let event = Event()
        
        event.name = name
        event.notes = notes
        event.date = date
        // event.id = "ID From the modified event"
        // TODO: To check if there is an ID when update
        
        writeToRealm {
            realmDB.add(event, update: .modified)
        }
    }
}
