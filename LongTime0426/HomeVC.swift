//
//  HomeVC.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/4/26.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class HomeVC: UIViewController,UITableViewDelegate,UITableViewDataSource{

    let tableView = UITableView()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        allUI()
        alamofireGET()
        
        
    }
    
    
    func allUI()
    {
        let width = self.view.frame.size.width
        let height = self.view.frame.height
        self.view.backgroundColor = UIColor.whiteColor()
        
        tableView.frame = CGRectMake(0, 0, width, height)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(HomeCell.self, forCellReuseIdentifier: "cell")
        tableView.backgroundColor = UIColor.whiteColor()
        
        self.view.addSubview(tableView)
        
        
    }
    
    func alamofireGET()
    {
        let URL = "http://magipea.com/admin/product/list/json"
        
        Alamofire.request(.GET, URL).responseJSON { response in
                
                if let JSON = response.result.value
                {
                    print("JSON: \(JSON)")
                }
        
        }
        
        tableView.reloadData()

    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 20
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 300
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as! HomeCell
        
        cell.textLabel?.text = "hhhhh"
        
        cell.bigImage.image = UIImage(named: "001")
        
        cell.testLabel.text = "你他媽的咧"
        
        return cell
    }

    
    
    
    
    
    
}////last
