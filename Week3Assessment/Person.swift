//
//  Person.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 4/23/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
import UIKit

class Person {
    let name: String
    let favoriteThing: String
    let favoriteColor: UIColor
    
    init(name: String, favoriteThing: String, favoriteColor: UIColor) {
        self.name = name
        self.favoriteThing = favoriteThing
        self.favoriteColor = favoriteColor
    }
}
