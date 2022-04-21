//
//  File.swift
//  
//
//  Created by wesley Mitchell on 2/8/22.
//

import Foundation

public struct StandardPersistence : KrakenPersistence {
    
    public init() {}
    
    public func store<T>(_ object: T, as fileName: String) where T : Encodable {
        return EncryptedStorage.store(object, to: .documents, as: fileName)
    }
    
    public func retrieve<T>(_ fileName: String, as type: T.Type) -> T where T : Decodable {
        return EncryptedStorage.retrieve(fileName, from: .documents, as: type)
    }
}
