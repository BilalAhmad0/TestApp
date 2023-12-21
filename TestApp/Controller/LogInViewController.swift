//
//  LogInViewController.swift
//  TestApp
//
//  Created by Bilal Ahmad on 16/12/2023.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var topHeadingView: UIView!
    
    @IBOutlet weak var faceSignUpButton: UIButton!
    
    @IBOutlet weak var googleSignUpButton: UIButton!
    
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        // Do any additional setup after loading the view.
    }


    //MARK: - Private Method
    private func configureView(){
        // top heading view design
        topHeadingView.layer.cornerRadius = 20
        
        // Facebook button design
        faceSignUpButton.layer.borderWidth = 1
        faceSignUpButton.layer.borderColor = UIColor.black.cgColor
        faceSignUpButton.layer.cornerRadius = 20
        
        // Google button design
        googleSignUpButton.layer.borderWidth = 1
        googleSignUpButton.layer.borderColor = UIColor.black.cgColor
        googleSignUpButton.layer.cornerRadius = 20
        
        //Forget Password Button
        
    }
    
    //MARK: - IBAction method
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc: SignUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewControllerID") as! SignUpViewController
        
        vc.modalPresentationStyle = .fullScreen

//        self.navigationController?.pushViewController(vc, animated: true)
        self.present(vc, animated: true)
    }
    
   

}
