//
//  File.swift
//  
//
//  Created by wesley Mitchell on 2/8/22.
//

import Foundation

public protocol KrakenAuthentication {
    var persistence: KrakenPersistence { get }
    init(persistence: KrakenPersistence)
    
    mutating func authenticate()
    var isAuthenticated: Bool { get set }
    var GetToken: String { get }
}
