//
//  Created by Jonas Reichert on 07.03.21.
//

import Foundation

public struct Export: Codable, Equatable {
    
    public let templates: [TemplateAPIModel]
    public let weeks: [TemplateWeekAPIModel]
    public let workouts: [TemplateWorkoutAPIModel]
    public let exercises: [TemplateExerciseAPIModel]
    public let sets: [TemplateExerciseSetAPIModel]
    public let types: [TemplateTypeAPIModel]
    public let lifts: [LiftAPIModel]
    
    public init(templates: [TemplateAPIModel],
                weeks: [TemplateWeekAPIModel],
                workouts: [TemplateWorkoutAPIModel],
                exercises: [TemplateExerciseAPIModel],
                sets: [TemplateExerciseSetAPIModel],
                types: [TemplateTypeAPIModel],
                lifts: [LiftAPIModel]) {
        self.templates = templates
        self.weeks = weeks
        self.workouts = workouts
        self.exercises = exercises
        self.sets = sets
        self.types = types
        self.lifts = lifts
    }
}
