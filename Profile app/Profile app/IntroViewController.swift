//
//  IntroViewController.swift
//  Profile App
//
//  Created by Benson Chu on 12/4/23.
//

import UIKit

class IntroViewController: UIViewController, UITextViewDelegate {
    public var completionHandler: ((String?) -> Void)?
    
    @IBOutlet weak var message: UITextView!
    @IBAction func UpdateCliked(_ sender: Any) {
        completionHandler?(message.text)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ExitButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        message!.layer.borderWidth = 1
        message!.layer.borderColor = UIColor.lightGray.cgColor
        
        message.text = "Write a little bit about yourself. Do you like cahtting? Are you a smoker? Do you bring pets with you? Etc."
        message.textColor = UIColor.lightGray
        message.delegate = self
    }
    //UITextViewDelegates
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Write a little bit about yourself. Do you like cahtting? Are you a smoker? Do you bring pets with you? Etc." {
            textView.text = ""
            textView.textColor = UIColor.black
        }
    }


}
