//
//  File.swift
//  
//
//  Created by wesley Mitchell on 2/8/22.
//

import Foundation

public protocol KrakenDIContainer {
    var Persistence: KrakenPersistence { get set }
    var Authentication: KrakenAuthentication { get set }
    var Theme: KrakenTheme { get set }
}
