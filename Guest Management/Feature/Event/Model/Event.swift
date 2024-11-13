//
//  Event.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import Foundation
import RealmSwift

class Event: Object, Identifiable {
    @Persisted(primaryKey: true) var id: String = UUID().uuidString
    @Persisted var name: String
    @Persisted var date: Date
    @Persisted var notes: String = ""
}
