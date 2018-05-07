//
//  Person.swift
//  FamousPeople
//
//  Created by Sashen Pillay on 5/4/18.
//  Copyright © 2018 Sashen Pillay. All rights reserved.
//

import Foundation
import UIKit

class Person{
    var name : String
    var occupation : String
    var description: String
    var image : UIImage?
    
    init(name: String, image: UIImage?, occupation: String, description : String) {
        self.name = name
        self.image = image
        self.occupation = occupation
        self.description = description
    }
}
