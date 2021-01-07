//
//  RealmInitializer.swift
//  Realm10
//
//  Created by Marcus Wu on 2021/1/6.
//

import Foundation
import RealmSwift

class RealmInitializer {
    
    func setup() {
        Realm.Configuration.defaultConfiguration.inMemoryIdentifier = "com.greenJacketSports.International.Manager"
    }
    
}
