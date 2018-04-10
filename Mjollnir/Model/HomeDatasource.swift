//
//  HomeDatasource.swift
//  Mjollnir
//
//  Created by Phillip Kelly-Ayo on 09/04/2018.
//  Copyright © 2018 Phillip Kelly-Ayo. All rights reserved.
//

import AtelierKAUNO

class HomeDatasource: Datasource {
    
    let cells: [Cell] = {
        
        let firstCell = Cell(cellType: "tweet", profileImage: #imageLiteral(resourceName: "lilLeo"), userId: "0001", username: "Phillip Kelly-Ayo", timestamp: "・2h ", tweet: "Whatever confronts you, don’t believe it. When something appears shine your light on it. Have confidence in the light that is always working inside you.” - Linji", comment: nil, instaImage: nil)
        
        let secondCell = Cell(cellType: "tweet", profileImage: #imageLiteral(resourceName: "profileImage"), userId: "0002", username: "Gordon Benet", timestamp: "・3h ", tweet: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.", comment: nil, instaImage: nil)
        
        let thirdCell = Cell(cellType: "insta", profileImage: #imageLiteral(resourceName: "mikePhil"), userId: "0003", username: "Michael Phil", timestamp: "2 MINS AGO", tweet: nil, comment: "Because this version of Residence stores an array of Room instances, its numberOfRooms property is implemented as a computed property, not a stored property.", instaImage: #imageLiteral(resourceName: "lilLeo"))
        
        return [firstCell, secondCell, thirdCell]
    }()
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        
        return [TweetCell.self, InstaCell.self]
    }
    
    override func cellClass(_ indexPath: IndexPath) -> DatasourceCell.Type? {
        
        if cells[indexPath.item].cellType == "insta" {
            return InstaCell.self
        }
        
        return TweetCell.self
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        
        return cells[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        
        return cells.count
    }
}
