//
//  File.swift
//  
//
//  Created by wesley Mitchell on 2/8/22.
//

import Foundation

public protocol KrakenPersistence {
    func store<T: Encodable>(_ object: T, as fileName: String)
    func retrieve<T: Decodable>(_ fileName: String, as type: T.Type) -> T
}


