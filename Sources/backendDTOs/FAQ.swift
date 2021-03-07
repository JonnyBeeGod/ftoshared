//
//  Created by Jonas Reichert on 07.03.21.
//

import Foundation

public struct FAQCategoryAPIModel: Codable, Equatable {
    
    let id: UUID
    let title: String
    let questions: [FAQQuestionAPIModel]
    
    public init(id: UUID, title: String, questions: [FAQQuestionAPIModel]) {
        self.id = id
        self.title = title
        self.questions = questions
    }
}

public struct FAQQuestionAPIModel: Codable, Equatable {
    
    let id: UUID
    let title: String
    let text: String
    let isFeatured: Bool
    
    public init(id: UUID, title: String, text: String, isFeatured: Bool) {
        self.id = id
        self.title = title
        self.text = text
        self.isFeatured = isFeatured
    }
}
