//
//  ViewController.swift
//  Profile App
//
//  Created by Benson Chu on 12/4/23.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var NameButton: UIButton!
    @IBOutlet weak var PhoneButton: UIButton!
    @IBOutlet weak var EmailButton: UIButton!
    @IBOutlet weak var IntroButton: UIButton!
    @IBOutlet weak var imageview: UIImageView!
    @IBAction func NameViewClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "NameViewController") as! NameViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = { text in self.NameButton.setTitle(text, for: .normal)}
        present(vc,animated: true)
    }
    @IBAction func PhoneViewClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PhoneViewController") as! PhoneViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = { text in self.PhoneButton.setTitle(text, for: .normal)}
        present(vc,animated: true)
    }
    @IBAction func EmailViewClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "EmailViewController") as! EmailViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = { text in self.EmailButton.setTitle(text, for: .normal)}
        present(vc,animated: true)
    }
    @IBAction func IntroViewClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "IntroViewController") as! IntroViewController
        vc.modalPresentationStyle = .fullScreen
        vc.completionHandler = { text in self.IntroButton.setTitle(text, for: .normal)}
        present(vc,animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageview.layer.masksToBounds = true
        imageview.layer.cornerRadius = imageview.frame.height / 2
    }


}

