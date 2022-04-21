//
//  Created by wesley Mitchell on 4/13/21.
//

import Foundation

open class KrakenApp: KrakenDIContainer, ObservableObject {
    public var Persistence: KrakenPersistence
    public var Authentication: KrakenAuthentication
    public var Config: KrakenConfiguration
    public var Network: KrakenNetwork
    public var Theme: KrakenTheme
    
    
    public init(persistence: KrakenPersistence,
                auth: KrakenAuthentication,
                config: KrakenConfiguration,
                network: KrakenNetwork,
                theme: KrakenTheme) {
        Persistence = persistence
        Authentication = auth
        Config = config
        Network = network
        Theme = theme
    }
}

