//
//  ViewController.swift
//  MotionAssginment
//
//  Created by Yundong Lee on 2021/10/06.
//

import UIKit


//
class ViewController: UIViewController {

    
    let emotionImages = [
        UIImage(named: "mono_slime1"),  UIImage(named: "mono_slime2"),  UIImage(named: "mono_slime3"),
        UIImage(named: "mono_slime4"),  UIImage(named: "mono_slime5"),  UIImage(named: "mono_slime6"),
        UIImage(named: "mono_slime7"),  UIImage(named: "mono_slime8"),  UIImage(named: "mono_slime9")
    ]
    
    let emotionNames = ["행복해 : ","사랑해 : ","좋아해 : ","당황해 : ","속상해 : ","우울해 : ","심심해 : ","슬퍼해 : ","슬프다 : "]
    
    @IBOutlet var emotionButtons: [UIButton]!
    @IBOutlet var emotionLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in emotionButtons.indices{
            
            emotionButtons[index].setImage(emotionImages[index], for: .normal)
            emotionButtons[index].sizeToFit()
            emotionButtons[index].imageView?.contentMode = .scaleAspectFit
        }
    }

    @IBAction func emotionButtonTaped(_ sender: UIButton) {
        if let index = emotionButtons.firstIndex(of: sender){
            print(index)
            var savedNum = UserDefaults.standard.integer(forKey: "\(index)")
            
            savedNum += 1
            
            emotionLabels[index].text = emotionNames[index] + "\(savedNum)"
            UserDefaults.standard.set(savedNum, forKey: "\(index)")
        }
    }
}

