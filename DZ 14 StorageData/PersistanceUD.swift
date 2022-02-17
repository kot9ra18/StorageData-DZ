//
//  PersistanceUD.swift
//  DZ 14 StorageData
//
//  Created by Александр Прохоров on 18.02.2022.
//

import Foundation

class Persistans{
    static let shared =  Persistans()
    
    private let kUserNameKey = "Persistans.kUserNameKey"
    var userName: String? {
        set {UserDefaults.standard.set(newValue, forKey: kUserNameKey)}
        get {UserDefaults.standard.string(forKey: kUserNameKey)}
    }

    private let kUserSurNameKey = "Persistans.kUserSurNameKey"
    var userSurName: String? {
        set {UserDefaults.standard.set(newValue, forKey: kUserSurNameKey)}
        get {UserDefaults.standard.string(forKey: kUserSurNameKey)}
    }
}
