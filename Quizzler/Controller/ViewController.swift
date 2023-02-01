//
//  ViewController.swift
//  Quizzler
//
//  Created by Aleksandra Asichka on 2023-01-29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var answerButton: [UIButton]!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quiz = BrainQuizz()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.titleLabel?.text else {
            return
        }
        let solution = quiz.checkAnswer(userAnswer)
        sender.backgroundColor = solution ? .green : .red
        quiz.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc private func updateUI() {
        for i in 0...answerButton.count - 1 {
            answerButton[i].setTitle(quiz.getAnswers()[i], for: .normal)
            answerButton[i].backgroundColor = .clear
        }
        questionLabel.text = quiz.getQuestionText()
        progressBar.progress = quiz.getProgress()
        scoreLabel.text = "Score: \(quiz.getScore())"
    }
}
