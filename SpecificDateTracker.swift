//
//  SpecificDateTracker.swift
//  MindScape
//
//  Created by Sian Hardaker on 04/09/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class SpecificDateTracker: UIViewController {

    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var notesField: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Happy: UIImageView!
    @IBOutlet weak var Sad: UIImageView!
    @IBOutlet weak var Anxious: UIImageView!
    @IBOutlet weak var Ok: UIImageView!
    @IBOutlet weak var Crying: UIImageView!
    @IBOutlet weak var Angry: UIImageView!
    @IBOutlet weak var Sleepy: UIImageView!
    @IBOutlet weak var Motivated: UIImageView!
    
    @IBAction func happyTapped(_ sender: Any) {
        if Happy.isHidden == true {
            Happy.isHidden = false
        } else {
            Happy.isHidden = true
        }
    }
    @IBAction func sadTapped(_ sender: Any) {
        if Sad.isHidden == true {
            Sad.isHidden = false
        } else {
            Sad.isHidden = true
        }
    }
    @IBAction func anxiousTapped(_ sender: Any) {
        if Anxious.isHidden == true {
            Anxious.isHidden = false
        } else {
            Anxious.isHidden = true
        }
    }
    @IBAction func okTapped(_ sender: Any) {
        if Ok.isHidden == true {
            Ok.isHidden = false
        } else {
            Ok.isHidden = true
        }
    }
    @IBAction func cryingTapped(_ sender: Any) {
        if Crying.isHidden == true {
            Crying.isHidden = false
        } else {
            Crying.isHidden = true
        }
    }
    @IBAction func angryTapped(_ sender: Any) {
        if Angry.isHidden == true {
            Angry.isHidden = false
        } else {
            Angry.isHidden = true
        }
    }
    @IBAction func sleepyTapped(_ sender: Any) {
        if Sleepy.isHidden == true {
            Sleepy.isHidden = false
        } else {
            Sleepy.isHidden = true
        }
    }
    @IBAction func motivatedTapped(_ sender: Any) {
        if Motivated.isHidden == true {
            Motivated.isHidden = false
        } else {
            Motivated.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        notesField.delegate = self
        DateLabel.text = dateString
        
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        textView.text += "\(notesField.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        notesField.resignFirstResponder()
    }
}

extension SpecificDateTracker: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

