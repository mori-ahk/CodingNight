//
//  User.swift
//  CodingNight
//
//  Created by Morteza Ahmadi on 2019-03-04.
//  Copyright © 2019 Morteza Ahmadi. All rights reserved.
//

import Foundation

struct User: Codable {
    let login: String
    let avatar_url: String?
    let followers: Int
    let following: Int
    let name: String?
    let location: String?
}
