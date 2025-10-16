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
        
        // Начальное состояние
        skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        changeButton.tintColor = .green
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        // Проверяем, какая сейчас иконка
        let isMoon = skyImageView.image == UIImage(systemName: "moon")
        
        // Выбираем новую иконку
        let newIcon = isMoon ? "sun.max.fill" : "moon"
        let newColor = isMoon ? UIColor.systemYellow : UIColor.gray
        
        // Анимация плавного перехода
        
        UIView.transition(with: skyImageView,
                          duration: 0.5,
                          options: .transitionCrossDissolve,
                          animations: {
                              self.skyImageView.image = UIImage(systemName: newIcon)
                              self.skyImageView.tintColor = newColor
                          },
                          completion: nil)
    }
}


