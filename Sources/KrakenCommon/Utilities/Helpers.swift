//
//  Created by wesley Mitchell on 4/13/21.
//

import SwiftUI
import Combine

// MARK: - General

extension ProcessInfo {
    public var isRunningTests: Bool {
        environment["XCTestConfigurationFilePath"] != nil
    }
}
extension Locale {
    static var backendDefault: Locale {
        return Locale(identifier: "en")
    }
    
    var shortIdentifier: String {
        return String(identifier.prefix(2))
    }
}

extension String {
    func localized(_ locale: Locale) -> String {
        let localeId = locale.shortIdentifier
        guard let path = Bundle.main.path(forResource: localeId, ofType: "lproj"),
            let bundle = Bundle(path: path) else {
            return NSLocalizedString(self, comment: "")
        }
        return bundle.localizedString(forKey: self, value: nil, table: nil)
    }
}

extension Result {
    var isSuccess: Bool {
        switch self {
        case .success: return true
        case .failure: return false
        }
    }
}

// MARK: - View Inspection helper

internal final class Inspection<V> where V: View {
    let notice = PassthroughSubject<UInt, Never>()
    var callbacks = [UInt: (V) -> Void]()
    
    func visit(_ view: V, _ line: UInt) {
        if let callback = callbacks.removeValue(forKey: line) {
            callback(view)
        }
    }
}
