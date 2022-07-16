//
//  Candy+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by 유정인 on 2022/07/03.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?
    
    public var wrappedName: String {
        name ?? "Unknown Candy"
    }

}

extension Candy : Identifiable {

}
