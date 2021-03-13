//
//  Created by Jonas Reichert on 07.03.21.
//

import Foundation

public struct LiftAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let name: String
    
    public init(
        id: UUID,
        name: String) {
        
        self.id = id
        self.name = name
    }
}
