//
//  File.swift
//  
//
//  Created by wesley Mitchell on 2/8/22.
//

import Foundation

public struct FakeAuthentication: KrakenAuthentication {
    public var persistence: KrakenPersistence
    public var isAuthenticated: Bool = false
    
    public init(persistence: KrakenPersistence) {
        self.persistence = persistence
    }
    
//    public var isAuthenticated: Bool {
//        guard let hasToken = persistence.retrieve("user", as: NSObject).observationInfo as? String else {
//            return false
//        }
//        return true
//    }
    
    public mutating func authenticate() {
        self.isAuthenticated = true
    }
    
    public var GetToken: String {
        return "fajkasdASFKIawiafsD"
    }
}
