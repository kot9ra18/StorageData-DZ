//
//  ModelRealm.swift
//  DZ 14 StorageData
//
//  Created by Александр Прохоров on 22.02.2022.
//

import Foundation
import RealmSwift

class Human: Object{
    @objc dynamic var name = ""
    var dogs = List<Dog>()

}

class Dog: Object{
    
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var owner: Human?

}

class Garbage: Object{
    @objc dynamic var name = ""

}

class PersistansRealm{
    static let shared =  PersistansRealm()
    
//    private let kUserNameKey = "Persistans.kUserNameKey"
//    var userName: String? {
//        set {UserDefaults.standard.set(newValue, forKey: kUserNameKey)}
//        get {UserDefaults.standard.string(forKey: kUserNameKey)}
//    }
//
//    private let kUserSurNameKey = "Persistans.kUserSurNameKey"
//    var userSurName: String? {
//        set {UserDefaults.standard.set(newValue, forKey: kUserSurNameKey)}
//        get {UserDefaults.standard.string(forKey: kUserSurNameKey)}
//    }
    private let realm = try! Realm()
    
    func test(){
       let human = Human()
        human.dogs.append(Dog())
        
        let dog = Dog()
        dog.owner = human
//        try! realm.write{
//            let garbage = Garbage()
//            garbage.name = "Just garbage"
//            realm.add(garbage)
//
//            let dog2 = Dog()
//            dog2.name = "Jacobs"
//            dog2.age = 2
//            realm.add(dog2)
//
//            let dog3 = Dog()
//            dog3.name = "Sheila"
//            dog3.age = 6
//            realm.add(dog3)
//        }
        
        let garbages = realm.objects(Garbage.self)
        try! realm.write{
            realm.delete(garbages)
//            for (index, dog) in allDogs.enumerated(){
//                dog.age = index * 2 + 2
//            }
        }
        for g in realm.objects(Garbage.self) {
            print("\(g.name)")
        }

    }
    
}
