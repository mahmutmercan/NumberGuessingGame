//
//  ViewController.swift
//  Number Guessing Game
//
//  Created by Sirius on 29.06.2020.
//  Copyright © 2020 Jaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textCorrect: UITextField!
    @IBOutlet weak var imgSave: UIImageView!
    @IBOutlet weak var buttonSave: UIButton!
    @IBOutlet weak var textGuess: UITextField!
    @IBOutlet weak var imgGuess: UIImageView!
    @IBOutlet weak var buttonTry: UIButton!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var imgStar1: UIImageView!
    @IBOutlet weak var imgStar2: UIImageView!
    @IBOutlet weak var imgStar3: UIImageView!
    @IBOutlet weak var imgStar4: UIImageView!
    @IBOutlet weak var imgStar5: UIImageView!
    
//    ekrandaki 5 tane yıldızı dizi halinde tutar.
    var stars : [UIImageView] = [UIImageView]()
//    kullanıcının yapabileceği maksimum deneme sayısı
    let maxTryNumber : Int = 5
//    kullanucu kaç deneme yaptı
    var tryNumber : Int = -1
//    Tahmin Edilmesi Gereken Sayı hedef sayı
    var correctAnswer : Int = -1
//    Oyun başarılı bir şekilde sona ererse burası true olucak
    var gameSucsessfull : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stars = [imgStar1,imgStar2,imgStar3,imgStar4,imgStar5]
        imgSave.isHidden = true
        imgGuess.isHidden = true
        buttonTry.isEnabled = false
        textCorrect.isSecureTextEntry = true
        labelResult.text = ""
        
    }
    
    @IBAction func buttonSaveClicked(_ sender: Any) {
        
        imgSave.isHidden = false
        if let t = Int(textCorrect.text!) {
            correctAnswer = t
            buttonTry.isEnabled = true
            textCorrect.isEnabled = false
            buttonSave.isEnabled = false
            imgSave.image = UIImage(named: "onay")
            
            
        } else {
            imgSave.image = UIImage(named: "hata")
        }
        
        
    }
    
    
    @IBAction func buttonTryClicked(_ sender: Any) {
        
        print("Tıkladın ve Denedin")
        
        
    }
    

}

