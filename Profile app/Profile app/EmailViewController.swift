//
//  EmailViewController.swift
//  Profile App
//
//  Created by Benson Chu on 12/4/23.
//

import UIKit

class EmailViewController: UIViewController {

    @IBOutlet weak var Emailaddr: UITextField!
    public var completionHandler: ((String?) -> Void)?
    @IBAction func UpdateClicked(_ sender: Any) {
        completionHandler?(Emailaddr.text)
        
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
