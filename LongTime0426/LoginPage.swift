//
//  LoginPage.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/4/26.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {
    
    let scrollView = UIScrollView()
    let signUpButton = UIButton()
    let loginButton = UIButton()
    let fbButton = UIButton()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        allUI()
        autoLayout()
    }

    
    func allUI()
    {
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        
        self.view.backgroundColor = UIColor.grayColor()
        
        scrollView.frame = CGRectMake(0, 0, width, height)
        scrollView.backgroundColor = UIColor.clearColor()
        scrollView.contentSize = CGSizeMake(width*5, height)
        self.view.addSubview(scrollView)
        
        signUpButton.backgroundColor = UIColor.clearColor()
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = UIColor.whiteColor().CGColor
        signUpButton.setTitle("註冊", forState: .Normal)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signUpButton.addTarget(self, action: #selector(LoginPage.signUp(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(signUpButton)
        
        loginButton.backgroundColor = UIColor.clearColor()
        loginButton.layer.borderWidth = 2
        loginButton.layer.borderColor = UIColor.whiteColor().CGColor
        loginButton.setTitle("登入", forState: .Normal)
        loginButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        loginButton.addTarget(self, action: #selector(LoginPage.login(_:)), forControlEvents:.TouchUpInside)
        self.view.addSubview(loginButton)
        
        fbButton.backgroundColor = UIColor.clearColor()
        fbButton.layer.borderWidth = 2
        fbButton.layer.borderColor = UIColor.whiteColor().CGColor
        fbButton.setTitle("facebook 登入", forState: .Normal)
        fbButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        fbButton.addTarget(self, action: #selector(LoginPage.fbLogin(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(fbButton)
        
        
        
    }
    
    
    func signUp(sender:UIButton)
    {
        print("你按了註冊")
        
        let controller = SignUpVC()
        self.presentViewController(controller, animated: true, completion: nil)
        
    }
    
    
    func login(sender:UIButton)
    {
        print("你按了登入")
        
        let controller = LoginVC()
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    func fbLogin(sender:UIButton)
    {
        let controller = HomeVC()
        let controllerNav = UINavigationController(rootViewController: controller)
        controller.modalTransitionStyle = .CrossDissolve
        self.presentViewController(controllerNav, animated: true, completion:nil)
    }
    
    
    func autoLayout()
    {
        self.signUpButton.translatesAutoresizingMaskIntoConstraints = (false)
        self.loginButton.translatesAutoresizingMaskIntoConstraints = (false)
        self.fbButton.translatesAutoresizingMaskIntoConstraints = (false)
        
        
        let dic = ["signUpButton":signUpButton,"loginButton":loginButton,"fbButton":fbButton]
        
        ////signUpButton & loginButton 的水平相對位置 和 寬度
        let signUpButton_loginButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[signUpButton(==loginButton)]-20-[loginButton(==signUpButton)]-20-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_loginButton_H)
        
        ////signUpButton & loginButton 的垂直相對位置 和 高度
        let signUpButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[signUpButton(40)]-100-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_V)
        
        let loginButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[loginButton(40)]-100-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_V)
        
        ////fbButton
        let fbButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[fbButton]-20-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(fbButton_H)
        
        let fbButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[signUpButton]-20-[fbButton(40)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(fbButton_V)
        
        
        
    }
    
    
    
    
    
    
}/////////last
