//
//  TweetCell.swift
//  Mjollnir
//
//  Created by Phillip Kelly-Ayo on 09/04/2018.
//  Copyright © 2018 Phillip Kelly-Ayo. All rights reserved.
//

import AtelierKAUNO

class TweetCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            guard let tweet =  datasourceItem as? Cell else { return }
            profileImageView.image = tweet.profileImage
            nameLabel.text = tweet.username
            timestampLabel.text = tweet.timestamp
            tweetTextView.text = tweet.tweet
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let timestampLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    } ()
    
    let optionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        return button
    }()
    
    let tweetTextView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.backgroundColor = .clear
        return textView
    }()
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(displayP3Red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(timestampLabel)
        addSubview(optionButton)
        addSubview(tweetTextView)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: timestampLabel.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 20)
        
        timestampLabel.anchor(profileImageView.topAnchor, left: nil, bottom: nil, right: optionButton.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 40, heightConstant: 20)
        
        optionButton.anchor(profileImageView.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 30, heightConstant: 20)
        
        tweetTextView.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 0)
    }
}
