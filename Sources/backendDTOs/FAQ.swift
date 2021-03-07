//
//  Created by Jonas Reichert on 07.03.21.
//

import Foundation

public struct FAQCategoryAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let title: String
    public let questions: [FAQQuestionAPIModel]
    
    public init(id: UUID, title: String, questions: [FAQQuestionAPIModel]) {
        self.id = id
        self.title = title
        self.questions = questions
    }
}

public struct FAQQuestionAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let title: String
    public let text: String
    public let isFeatured: Bool
    
    public init(id: UUID, title: String, text: String, isFeatured: Bool) {
        self.id = id
        self.title = title
        self.text = text
        self.isFeatured = isFeatured
    }
}
