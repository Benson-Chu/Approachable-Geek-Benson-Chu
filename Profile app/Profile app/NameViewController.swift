//  NameViewController.swift
//  Profile App
//
//  Created by Benson Chu on 12/4/23.
//

import UIKit

class NameViewController: UIViewController {

    @IBOutlet weak var firstname: UITextField!
    @IBOutlet weak var lastname: UITextField!
    public var completionHandler: ((String?) -> Void)?
    @IBAction func UpdateClicked(_ sender: Any) {
        
        let fullname = firstname.text! + " " + lastname.text!
        completionHandler?(fullname)
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func ExitButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
