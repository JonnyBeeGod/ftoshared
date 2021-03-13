//
//  Created by Jonas Reichert on 07.03.21.
//

import Foundation

public struct Export: Codable, Equatable {
    
    public let templates: [TemplateAPIModel]
    public let types: [TemplateTypeAPIModel]
    public let lifts: [LiftAPIModel]
    
    public init(
        templates: [TemplateAPIModel],
        types: [TemplateTypeAPIModel],
        lifts: [LiftAPIModel]) {
        
        self.templates = templates
        self.types = types
        self.lifts = lifts
    }
}
