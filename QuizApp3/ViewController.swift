//
//  ViewController.swift
//  QuizApp3
//
//  Created by 扇谷真依 on 2016/02/23.
//  Copyright © 2016年 扇谷真依. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UITextView!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var cross: UIButton!
    @IBOutlet weak var next: UIButton!
    var soundTable: [AnyObject] = []
    var player: AVAudioPlayer?
    var correct = 0
    var question = 0
    var sound_1: SystemSoundID?
    
    @IBAction func CorrectAnswer(sender: UIButton) {
        
        if question == 0 {
            self.textLabel.text = "Right!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("correct2")
            correct = 1
        }else if question == 1 {
            self.textLabel.text = "Right!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("correct2")
            correct++
        }else if question == 2 {
            self.textLabel.text = "No! Wrong!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("incorrect1")
        }else if question == 3 {
            self.textLabel.text = "Right!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("correct2")
            correct++
        }else if question == 4 {
            self.textLabel.text = "No! Wrong!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("incorrect1")
        };
    }
    
    @IBAction func IncorrectAnswer(sender: UIButton) {
        if question == 0 {
            self.textLabel.text = "No! Wrong!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("incorrect1")
        }else if question == 1 {
            self.textLabel.text = "No! Wrong!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("incorrect1")
        }else if question == 2 {
            self.textLabel.text = "Right!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("correct2")
            correct++
        }else if question == 3 {
            self.textLabel.text = "No! Wrong!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("incorrect1")
        }else if question == 4 {
            self.textLabel.text = "Right!"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = false
            self.playSound("correct2")
            correct++
        };
    }
    
    @IBAction func NextQuestion(sender: UIButton) {
        if question == 0 {
            self.textLabel.text = "Takeshita street have to Harajuku."
            self.circle.hidden = false
            self.cross.hidden = false
            self.next.hidden = true
            question++
        }else if question == 1 {
            self.textLabel.text = "Tokyo Tower is the best new."
            self.circle.hidden = false
            self.cross.hidden = false
            self.next.hidden = true
            question++
        }else if question == 2 {
            self.textLabel.text = "There is Odaiba in Ferris wheel."
            self.circle.hidden = false
            self.cross.hidden = false
            self.next.hidden = true
            question++
        }else if question == 3 {
            self.textLabel.text = "Disneyland is in Setagaya."
            self.circle.hidden = false
            self.cross.hidden = false
            self.next.hidden = true
            question++
        }else if question == 4 {
            let floatNum = Float(correct)
            let result = floor(floatNum / 5 * 100)
            self.textLabel.text = "Finish!\n\(result)％"
            self.circle.hidden = true
            self.cross.hidden = true
            self.next.hidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.next.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSound(soundFileName: String) {
        do {
            let bundle: NSBundle = NSBundle.mainBundle()
            let path: String = bundle.pathForResource(soundFileName, ofType: "mp3")!
            let url: NSURL = NSURL.fileURLWithPath(path)
            try self.player = AVAudioPlayer(contentsOfURL: url)
            self.player!.play()
        }catch {
            
        }
        
    }


}

