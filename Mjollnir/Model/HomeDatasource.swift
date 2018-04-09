//
//  HomeDatasource.swift
//  Mjollnir
//
//  Created by Phillip Kelly-Ayo on 09/04/2018.
//  Copyright © 2018 Phillip Kelly-Ayo. All rights reserved.
//

import AtelierKAUNO

class HomeDatasource: Datasource {
    let words = ["user1", "user2", "user3"]
    
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
        if indexPath.item == 2 {
            return TweetCell.self
        }
        
        return InstaCell.self
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}
