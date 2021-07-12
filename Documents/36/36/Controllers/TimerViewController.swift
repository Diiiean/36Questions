//
//  TimerViewController.swift
//  36
//
//  Created by Диана Нуансенгси on 05.06.2021.
//

import UIKit
import AVFoundation

class TimerViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    var counter = 240
    var allowedPlaySound: Bool = true
    var timer = Timer()
    var audioPlayer: AVAudioPlayer?
    public static var isOnScreen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Дождитесь звонка"
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    @objc func updateCounter() {
        if counter > 0 {
            counterLabel.text = "\(String(counter)) сек"
            counter -= 1
        }
        //else play sound
        else if allowedPlaySound && counter != -1 {
            timer.invalidate()
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            audioPlayer = try! AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
            counter = -1  //to exit the loop
            textLabel.text = "Время истекло"
            counterLabel.text = "0 сек"
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        TimerViewController.isOnScreen = true
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        TimerViewController.isOnScreen = false
        if TimerViewController.isOnScreen == false {
            allowedPlaySound = false
        }
    }
}


