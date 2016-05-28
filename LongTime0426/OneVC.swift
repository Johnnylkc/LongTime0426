//
//  OneVC.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/5/26.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class OneVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let tableView = UITableView()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

    
        allUI()

    }

    
    func allUI()
    {
        self.view.backgroundColor = UIColor.groupTableViewBackgroundColor()
        
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        print("\(width) \(height)")
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = CGRectMake(0, 0, width, height)
        tableView.registerClass(OneCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(tableView)
    
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = OneCell.init(style: .Value1, reuseIdentifier: "cell")
        
        
        
        return cell
    }
    
}////////end
