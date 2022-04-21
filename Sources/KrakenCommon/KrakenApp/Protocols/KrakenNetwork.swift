//
//  File.swift
//  
//
//  Created by wesley Mitchell on 2/8/22.
//

import Foundation

public protocol KrakenNetwork {
    init(auth: KrakenAuthentication, config: KrakenConfiguration)
}
