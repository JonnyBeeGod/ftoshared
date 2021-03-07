//
//  Created by Jonas Reichert on 07.03.21.
//

import Foundation

public struct TemplateTypeAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let name: String
    
    public init(
        id: UUID,
        name: String) {
        
        self.id = id
        self.name = name
    }
}

public struct TemplateAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let name: String
    public let version: Int
    public let weeks: [TemplateWeekAPIModel]
    public let typeId: UUID
    
    public init(
        id: UUID,
        name: String,
        version: Int,
        weeks: [TemplateWeekAPIModel],
        typeId: UUID) {
        
        self.id = id
        self.name = name
        self.version = version
        self.weeks = weeks
        self.typeId = typeId
    }
}

public struct TemplateWeekAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let orderIndex: Int
    public let workouts: [TemplateWorkoutAPIModel]
    
    public init(
        id: UUID,
        orderIndex: Int,
        workouts: [TemplateWorkoutAPIModel]) {
        
        self.id = id
        self.orderIndex = orderIndex
        self.workouts = workouts
    }
}

public struct TemplateWorkoutAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let orderIndex: Int
    public let exercises: [TemplateExerciseAPIModel]
    
    public init(
        id: UUID,
        orderIndex: Int,
        exercises: [TemplateExerciseAPIModel]) {
        
        self.id = id
        self.orderIndex = orderIndex
        self.exercises = exercises
    }
}

public struct TemplateExerciseAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let orderIndex: Int
    public let liftId: UUID
    public let sets: [TemplateExerciseSetAPIModel]
    
    public init(
        id: UUID,
        orderIndex: Int,
        liftId: UUID,
        sets: [TemplateExerciseSetAPIModel]) {
        
        self.id = id
        self.orderIndex = orderIndex
        self.liftId = liftId
        self.sets = sets
    }
}

public struct TemplateExerciseSetAPIModel: Codable, Equatable {
    
    public let id: UUID
    public let orderIndex: Int
    public let numReps: Int
    public let percentage: Double
    public let isAMRAP: Bool
    
    public init(
        id: UUID,
        orderIndex: Int,
        numReps: Int,
        percentage: Double,
        isAMRAP: Bool) {
        
        self.id = id
        self.orderIndex = orderIndex
        self.numReps = numReps
        self.percentage = percentage
        self.isAMRAP = isAMRAP
    }
}
