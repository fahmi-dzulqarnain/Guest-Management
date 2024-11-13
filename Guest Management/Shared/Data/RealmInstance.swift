//
//  RealmInstance.swift
//  Guest Management
//
//  Created by Fahmi Dzulqarnain on 13/11/2024.
//

import RealmSwift

protocol RealmInstance {
    var realmDB: Realm { get }
    func writeToRealm(completion: () -> Void)
}

extension RealmInstance {
    
    var realmDB: Realm {
        do {
            return try Realm()
        } catch let error {
            #if DEBUG
            print("Could instantiate the Realm DB \(error.localizedDescription)")
            fatalError(error.localizedDescription)
            #endif
        }
    }
    
    func writeToRealm(completion: () -> Void) {
        do {
            try realmDB.write {
                completion()
            }
        } catch let error {
            #if DEBUG
            print("Error writing to Realm DB \(error.localizedDescription)")
            #endif
        }
    }
}
