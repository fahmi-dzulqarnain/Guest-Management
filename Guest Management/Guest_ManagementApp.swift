//
//  Guest_ManagementApp.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import RealmSwift
import SwiftUI

@main
struct Guest_ManagementApp: SwiftUI.App {
    
    init() {
        Realm.Configuration.defaultConfiguration = Realm.Configuration(deleteRealmIfMigrationNeeded: true)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
