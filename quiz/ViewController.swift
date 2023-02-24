//
//  ViewController.swift
//  quiz
//
//  Created by Nikita on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    var currentQuestionIndex: Int = 0
    let questionList: [String] = ["What city are you from", "Whats your girlfriend name", "Whats your dog name"]
    let answerList: [String] = ["Moscow", "Tasya", "Tima"]
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex = (currentQuestionIndex + 1) % questionList.count
        questionLabel.text = questionList[currentQuestionIndex]
        answerLabel.text = "..."
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answerList[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questionList[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    	
}

