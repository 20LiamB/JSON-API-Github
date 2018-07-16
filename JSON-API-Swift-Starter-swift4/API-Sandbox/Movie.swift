//
//  Movie.swift
//  API-Sandbox
//
//  Created by Dion Larson on 6/24/16.
//  Copyright © 2016 Make School. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Movie {
    let name: String
    let rightsOwner: String
    let price: String
    let link: String
    let releaseDate: String
    let url: String
    
    init(json: JSON) {
        self.name = json["feed"]["entry"]["label"].stringValue
        self.rightsOwner = json["feed"]["entry"]["rights"].stringValue
        self.price = json["feed"]["entry"]["im:price"].stringValue
        self.link = json["feed"]["entry"]["link"].stringValue
        self.releaseDate = json["feed"]["entry"]["im:releaseDate"].stringValue
        self.url = json["feed"]["entry"]["im:image"]["label"].stringValue
    }
    
    
}
