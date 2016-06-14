//
//  LoginVC.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/5/28.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    let emailTF = UITextField()
    let passwordTF = UITextField()
    let loginButton = UIButton()
    let toSignUpButton = UIButton()
    
    
    let lineView01 = UIView()
    let lineView02 = UIView()
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        allUI()
        autoLayout()

    }

    
    
    func allUI()
    {
        self.view.backgroundColor = UIColor.grayColor()
        
        emailTF.borderStyle = .None
        emailTF.attributedPlaceholder =
            NSAttributedString(string:"電子郵件",attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        self.view.addSubview(emailTF)
        
        passwordTF.borderStyle = .None
        passwordTF.attributedPlaceholder =
            NSAttributedString(string:"密碼",attributes:[NSForegroundColorAttributeName: UIColor.whiteColor()])
        self.view.addSubview(passwordTF)
        
        loginButton.backgroundColor = UIColor.whiteColor()
        loginButton.setTitle("登入", forState: .Normal)
        loginButton.setTitleColor(UIColor.grayColor(), forState: .Normal)
        loginButton.addTarget(self, action: #selector(LoginVC.login(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(loginButton)
        
        lineView01.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(lineView01)
        
        lineView02.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(lineView02)
        
        toSignUpButton.backgroundColor = UIColor.clearColor()
        toSignUpButton.setTitle("我要註冊", forState: .Normal)
        toSignUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        toSignUpButton.addTarget(self, action: #selector(LoginVC.toSignUpPage(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(toSignUpButton)
        
    }
    
    func login(sender:UIButton)
    {
        print("我要登入")
    }
    
    func toSignUpPage(sender:UIButton)
    {
        let controller = SignUpVC()
        controller.modalTransitionStyle = .CrossDissolve
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    func autoLayout()
    {
       
        emailTF.translatesAutoresizingMaskIntoConstraints = (false)
        passwordTF.translatesAutoresizingMaskIntoConstraints = (false)
        loginButton.translatesAutoresizingMaskIntoConstraints = (false)
        toSignUpButton.translatesAutoresizingMaskIntoConstraints = (false)
        
        lineView01.translatesAutoresizingMaskIntoConstraints = (false)
        lineView02.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["emailTF":emailTF,"passwordTF":passwordTF,"loginButton":loginButton,"lineView01":lineView01,"lineView02":lineView02,"toSignUpButton":toSignUpButton]
        
        ////emailTF
        let emailTF_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[emailTF]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(emailTF_H)
        
        let emailTF_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-100-[emailTF(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics:nil, views: dic)
        self.view.addConstraints(emailTF_V)
        
        ////passwordTF
        let passwordTF_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[passwordTF]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTF_H)
        
        let passwordTF_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[emailTF]-30-[passwordTF(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTF_V)
        
        ////loginButton
        let loginButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[loginButton]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_H)
        
        let loginButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTF]-30-[loginButton(40)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(loginButton_V)
        
        ////lineView01 這是接在emailTF下方的
        let lineView01_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[lineView01]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView01_H)
        
        let lineView01_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[emailTF]-1-[lineView01(2)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView01_V)
        
        ////lineView02 這是接在passwordTF下方的
        let lineView02_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[lineView02]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView02_H)
        
        let lineView02_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTF]-1-[lineView02(2)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView02_V)
        
        
        ////toSignUpButton
        let toSignUpButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:[toSignUpButton(100)]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(toSignUpButton_H)
        
        let toSignUpButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[loginButton]-5-[toSignUpButton(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(toSignUpButton_V)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}////////////end
