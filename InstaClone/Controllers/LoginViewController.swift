//
//  LoginViewController.swift
//  InstaClone
//
//  Created by Ockiya Beinmonyu Daniel on 05.06.22.
//

import UIKit

class LoginViewController: UIViewController {
    
    struct Constants  {
        static let cornerRadius: CGFloat = 8.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViews()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
    }
    
    private let usernameEmailField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username or email address"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x:0, y:0, width:10, height:0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        
        return field
    }()
    
    private let PasswordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Password"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x:0, y:0, width:10, height:0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        return field
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let headerView: UIView = {
        let header = UIView()
        header.clipsToBounds = true
        let backgroundImageView = UIImageView(image: UIImage(named: "gradient"))
        header.addSubview(backgroundImageView)
        
        return header
    }()
    
    private let privacyButton: UIButton = {
        return UIButton()
    }()
    
    private let termsButton: UIButton = {
        return UIButton()
    }()
    
    private let createAccountButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.label, for: .normal)
        button.setTitle("Don't have an account? Sign Up", for: .normal)
        
        return button
    }()
    
    private func addSubViews() {
        view.addSubview(usernameEmailField)
        view.addSubview(PasswordField)
        view.addSubview(loginButton)
        view.addSubview(termsButton)
        view.addSubview(privacyButton)
        view.addSubview(createAccountButton)
        view.addSubview(headerView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //Assign frames
        headerView.frame = CGRect(
            x: 0, y: 0.0, width: view.width, height: view.height/3.0
        )
        
        confifureHeaderView()
        
    }
    
    private func confifureHeaderView() {
        guard headerView.subviews.count == 1 else{
            return
        }
        
        guard let backgroundView = headerView.subviews.first else {
            return
        }
        
        backgroundView.frame = headerView.bounds
        //Add instagram Logo
        
        let imageView = UIImageView(image: UIImage(named: "text"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: headerView.width/4.0, y: view.safeAreaInsets.top, width: headerView.width/2.0, height: headerView.height - view.safeAreaInsets.top)
        headerView.addSubview(imageView)
    }
    
    @objc private func didTapLoginButton(){}
    @objc private func didTapTermsButton(){}
    @objc private func didTapPrivacyButton(){}
    @objc private func didTapCreateAccountButton(){}
}
