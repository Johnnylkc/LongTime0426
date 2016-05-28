//
//  SignUpVC.swift
//  LongTime0426
//
//  Created by 劉坤昶 on 2016/5/28.
//  Copyright © 2016年 JohnnyKetchup. All rights reserved.
////////

import UIKit

class SignUpVC: UIViewController {

    let emailTF = UITextField()
    let passwordTF = UITextField()
    let passwordTF02 = UITextField()
    let signUpButton = UIButton()
    
    let lineView01 = UIView()
    let lineView02 = UIView()
    let lineView03 = UIView()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        allUI()
        autoLayout()
        
    }

    
    
    func allUI()
    {
        self.view.backgroundColor = UIColor.grayColor()
        
        let width = self.view.frame.size.width
        let height = self.view.frame.size.height
        print("\(width) \(height)")
        
        emailTF.borderStyle = .RoundedRect
        emailTF.placeholder = "電子郵件"
        self.view.addSubview(emailTF)
        
        passwordTF.borderStyle = .RoundedRect
        passwordTF.placeholder = "密碼"
        self.view.addSubview(passwordTF)
        
        passwordTF02.borderStyle = .RoundedRect
        passwordTF02.placeholder = "密碼確認"
        self.view.addSubview(passwordTF02)
        
        signUpButton.backgroundColor = UIColor.redColor()
        signUpButton.layer.cornerRadius = 5
        signUpButton.clipsToBounds = true
        signUpButton.setTitle("註冊", forState: .Normal)
        signUpButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        signUpButton.addTarget(self, action: #selector(SignUpVC.signUp(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(signUpButton)
        
        lineView01.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(lineView01)
        
        lineView02.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(lineView02)
        
        lineView03.backgroundColor = UIColor.whiteColor()
        self.view.addSubview(lineView03)
        
    }

    
    func signUp(sender:UIButton)
    {
        print("我要註冊了！！")
    }
    

    func autoLayout()
    {
        emailTF.translatesAutoresizingMaskIntoConstraints = (false)
        passwordTF.translatesAutoresizingMaskIntoConstraints = (false)
        passwordTF02.translatesAutoresizingMaskIntoConstraints = (false)
        signUpButton.translatesAutoresizingMaskIntoConstraints = (false)
        
        lineView01.translatesAutoresizingMaskIntoConstraints = (false)
        lineView02.translatesAutoresizingMaskIntoConstraints = (false)
        lineView03.translatesAutoresizingMaskIntoConstraints = (false)
        
        let dic = ["emailTF":emailTF,"passwordTF":passwordTF,"passwordTF02":passwordTF02,"signUpButton":signUpButton,"lineView01":lineView01,"lineView02":lineView02,"lineView03":lineView03]
        
        ////emailTF
        let emailTF_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[emailTF]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(emailTF_H)
        
        let emailTF_V = NSLayoutConstraint.constraintsWithVisualFormat("V:|-100-[emailTF(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(emailTF_V)
        
        ////passwordTF
        let passwordTF_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[passwordTF]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTF_H)
        
        let passwordTF_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[emailTF]-30-[passwordTF(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTF_V)
        
        ////passwordTF02
        let passwordTF02_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[passwordTF02]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTF02_H)
        
        let passwordTF02_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTF]-30-[passwordTF02(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(passwordTF02_V)
        
        ////signUpButton
        let signUpButton_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[signUpButton]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_H)
        
        let signUpButton_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTF02]-30-[signUpButton(30)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(signUpButton_V)
        
        ////lineView01 這個是接在emailTF下方的
        let lineView01_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[lineView01]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView01_H)
        
        let lineView01_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[emailTF]-1-[lineView01(2)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView01_V)
        
        ////lineView02 這個是接在passwordTF下方的
        let lineView02_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[lineView02]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView02_H)
        
        let lineView02_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTF]-1-[lineView02(2)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView02_V)
        
        ////lineView03 這個是接在passwordTF02下方的
        let lineView03_H = NSLayoutConstraint.constraintsWithVisualFormat("H:|-50-[lineView03]-50-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView03_H)
        
        let lineView03_V = NSLayoutConstraint.constraintsWithVisualFormat("V:[passwordTF02]-1-[lineView03(2)]", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: dic)
        self.view.addConstraints(lineView03_V)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

}/////end
