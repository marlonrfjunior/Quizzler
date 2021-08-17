//
//  ViewController.swift
//  Quizzler
//
//  Created by Marlon Junior🦈⚓️ on 13/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var progress:Float = 0.0
    let quiz = [
        ["Esse é o meu primeiro app.", "False"],
        ["Esse é o meu último app.", "False"],
        ["Banana tem semente.", "True"],
        ["Esse é o meu primeiro app.", "False"],
        ["Esse é o meu último app.", "False"],
        ["Banana tem semente.", "True"],
        ["Esse é o meu primeiro app.", "False"],
        ["Esse é o meu último app.", "False"],
        ["Banana tem semente.", "True"]

    ]
    var quetionNumber: Int = 0
    
    @IBAction func anwserPressedButton(_ sender: UIButton) {
        print(sender.currentTitle!)
        print("\(quiz[quetionNumber][1])")
        if sender.currentTitle! == quiz[quetionNumber][1] {
            progress+=0.1
        }
        updateQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        progressBar.progress = progress
    }

    func updateQuestion() {
        quetionNumber += 1
        questionLabel.text = quiz[quetionNumber][0]
        progressBar.progress = progress
        print(progress)
    }
}

