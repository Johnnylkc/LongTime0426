//
//  OneCell.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/5/27.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class OneCell: UITableViewCell {

    let menuImage01 = UIImageView()
    let menuImage02 = UIImageView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        
        
        autoLayout()
    }
    
    
    func autoLayout()
    {
        
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
