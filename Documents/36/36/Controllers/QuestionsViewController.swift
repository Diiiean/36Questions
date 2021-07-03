//
//  QuestionsViewController.swift
//  36
//
//  Created by Диана Нуансенгси on 05.06.2021.
//

import UIKit

class QuestionsViewController: UIViewController {
    @IBOutlet weak var topButtonOutlet: UIButton!
    @IBOutlet weak var startTimerImage: UIButton!
    @IBOutlet weak var bottomQuestionLabel: UILabel!
    @IBOutlet weak var topQuestionLabel: UILabel!
    
    var questionBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topQuestionLabel.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        topButtonOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
        setUpNavigationBar()
        updateUI()
    }
    
    func setUpNavigationBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    @IBAction func bottomButtonPressed(_ sender: UIButton) {
            questionBrain.nextQuestionForBottomLabel()
        updateUI()
    }
    
    @IBAction func topButtonPressed(_ sender: UIButton) {
            questionBrain.nextQuestionForTopLabel()
        updateUI()
    }
    
     func updateUI() {
        topQuestionLabel.text = questionBrain.getQuestionTextForTopLabel()
        bottomQuestionLabel.text = questionBrain.getQuestionTextForBottomLabel()
       
        //start the timer if a certain question requires it
        if questionBrain.showButtonTimer() == true {
            startTimerImage.isHidden = false
        }
        else {
            startTimerImage.isHidden = true
        }
        
    }

}
