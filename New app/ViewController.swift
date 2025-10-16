//
//  ViewController.swift
//  New app
//
//  Created by Димида Бадмаева on 13/10/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var skyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        changeButton.tintColor = .green
        // Do any additional setup after loading the view.
    }

}

