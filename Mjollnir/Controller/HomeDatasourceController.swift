//
//  HomeDatasourceController.swift
//  Mjollnir
//
//  Created by Phillip Kelly-Ayo on 09/04/2018.
//  Copyright © 2018 Phillip Kelly-Ayo. All rights reserved.
//

import AtelierKAUNO
import UIKit

class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let cell = self.datasource?.item(indexPath) as? Cell {
            
            var approximateWidthTweetTextView:CGFloat = 0
            var cellString:String = ""
            var estimatedFrameHeight:CGFloat = 0
            
            if cell.cellType == "tweet" {
                //view.frame.width - 12 - 50 - 4 - 12 - 12
                //last -12 term to account for additional padding within TextView
                approximateWidthTweetTextView = view.frame.width - 86
                cellString = cell.tweet!
                
            } else if cell.cellType == "insta" {
                //view.frame.width - 4 - 8 - 12
                //last -12 term to account for additional padding within TextView
                approximateWidthTweetTextView = view.frame.width - 24
                cellString = cell.comment!
            }
            
            let size = CGSize(width: approximateWidthTweetTextView, height: 1000)
            let attributes: [NSAttributedStringKey: Any] = [ .font: UIFont.systemFont(ofSize: 15)]
            let estimatedFrame = NSString(string: cellString).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            if cell.cellType == "tweet" {
                //estimatedFrame.height + (nameLabel.height = 20) + (top padding = 12) + (12 arbitary value for TextView)
                estimatedFrameHeight = estimatedFrame.height + 44
            } else if cell.cellType == "insta" {
                //estimatedFrame.height + 115 + (12 arbitary value for TextView)
                estimatedFrameHeight = estimatedFrame.height + 115 + view.frame.width
            }
            
            return CGSize(width: view.frame.width, height: estimatedFrameHeight)
        }
        
        return CGSize(width: view.frame.width, height: 550)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)

    }
}
