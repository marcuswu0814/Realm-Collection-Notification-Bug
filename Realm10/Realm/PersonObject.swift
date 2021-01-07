//
//  PersonObject.swift
//  Realm10
//
//  Created by Marcus Wu on 2021/1/6.
//

import RealmSwift

class PersonObject: Object {
    
    @objc dynamic var id: String = ""
        
    @objc dynamic var name: String = ""
    
    @objc dynamic var isBusy: Bool = false
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
}

extension PersonObject {
    
    struct Template {
        
        let id: String
        
        let name: String
        
        let isBusy: Bool
        
        func toObject() -> PersonObject {
            let object = PersonObject()
            
            object.id = id
            object.name = name
            object.isBusy = isBusy
            
            return object
        }
        
    }
    
    func toTemplate() -> Template {
        Template(id: id, name: name, isBusy: isBusy)
    }
    
}
