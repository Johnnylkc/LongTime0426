//
//  HomeCell.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/4/26.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class HomeCell: UITableViewCell {

    let bigImage = UIImageView()
    let testLabel = UILabel()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        bigImage.backgroundColor = UIColor.orangeColor()
        self.contentView.addSubview(bigImage)
        
        testLabel.textColor = UIColor.blackColor()
        testLabel.font = UIFont.systemFontOfSize(15)
        testLabel.backgroundColor = UIColor.orangeColor()
        self.contentView.addSubview(testLabel)
        
        autoLayout()
    }
    
    
    func autoLayout()
    {
        self.bigImage.translatesAutoresizingMaskIntoConstraints = (false)
        self.testLabel.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["bigImage":bigImage,"testLabel":testLabel]
        
        ////bigImage
        let bigImage_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|[bigImage]|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.contentView.addConstraints(bigImage_H)
        
        let bigImage_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|[bigImage(200)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.contentView.addConstraints(bigImage_V)
        
        ////testLabel
        let testLabel_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[testLabel(100)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.contentView.addConstraints(testLabel_H)
        
        let testLabel_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-5-[testLabel(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.contentView.addConstraints(testLabel_V)
        
        
    }
    
    
    
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
