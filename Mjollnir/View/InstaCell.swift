//
//  InstaCell.swift
//  Mjollnir
//
//  Created by Phillip Kelly-Ayo on 09/04/2018.
//  Copyright © 2018 Phillip Kelly-Ayo. All rights reserved.
//

import AtelierKAUNO

class InstaCell: DatasourceCell {
    
    override var datasourceItem: Any? {
        didSet {
            
        }
    }
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .red
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "TEST TEST TEST"
        label.backgroundColor = .green
        return label
    }()
    
    let optionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        
        return button
    }()
    
    let instaImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        return imageView
    }()
    
    let likeButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = .red
        return button
    }()
    
    let commentButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        return button
    }()
    
    let directMessageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .gray
        return button
    }()
    
    let saveToCollectionButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .orange
        return button
    }()
    
    let instaTextView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .red
        return textView
    }()
    
    let moreButton: UIButton = {
        let button = UIButton()
        button.backgroundColor  = .cyan
        return button
    }()
    
    let timestampLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(optionButton)
        addSubview(instaImageView)
        addSubview(likeButton)
        addSubview(commentButton)
        addSubview(directMessageButton)
        addSubview(saveToCollectionButton)
        addSubview(instaTextView)
        addSubview(moreButton)
        addSubview(timestampLabel)
        
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 30)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: optionButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 30)
        
        optionButton.anchor(profileImageView.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 30, heightConstant: 30)
        
        instaImageView.anchor(profileImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: self.frame.width, heightConstant: self.frame.width)
        
        likeButton.anchor(instaImageView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 30)
        
        commentButton.anchor(likeButton.topAnchor, left: likeButton.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 30)
        
        directMessageButton.anchor(likeButton.topAnchor, left: commentButton.rightAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 0, widthConstant: 30, heightConstant: 30)
        
        saveToCollectionButton.anchor(likeButton.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 30, heightConstant: 30)
        
        instaTextView.anchor(likeButton.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 50)
        
        moreButton.anchor(instaTextView.bottomAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: -20, leftConstant: 0, bottomConstant: 0, rightConstant: 8, widthConstant: 60, heightConstant: 20)
        
        timestampLabel.anchor(instaTextView.bottomAnchor, left: self.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 8, widthConstant: 0, heightConstant: 25)
    }
}
