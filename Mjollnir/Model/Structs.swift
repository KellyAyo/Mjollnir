//
//  Structs.swift
//  Mjollnir
//
//  Created by Phillip Kelly-Ayo on 10/04/2018.
//  Copyright © 2018 Phillip Kelly-Ayo. All rights reserved.
//

import UIKit

struct Cell {
    let cellType: String
    let profileImage: UIImage
    let userId: String
    let username: String
    let timestamp: String
    //TWEET SPECIFIC
    let tweet: String?
    //INSTA SPECIFIC
    let comment: String?
    let instaImage: UIImage?
    
}

struct Insta {
    let cellType: String
    let profileImage: UIImage
    let userId: String
    let username: String
    let timestamp: String
    
    //INSTA SPECIFIC
    let comment: String
    let instaImage: UIImage
}
