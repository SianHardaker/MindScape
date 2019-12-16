//
//  Therapies.swift
//  MindScape
//
//  Created by Sian Hardaker on 17/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class Therapies: UIViewController{
    
    
    @IBAction func Home(_ sender: UIButton) {
    }
    
    @IBAction func CBT(_ sender: UIButton) {
        let web1 = "https://www.nhs.uk/conditions/cognitive-behavioural-therapy-cbt/"
            UIApplication.shared.open(URL(string:web1)!, options: [:], completionHandler: nil)
    }
    
    @IBAction func SelfHelp(_ sender: UIButton) {
        let web2 = "https://www.mind.org.uk/information-support/types-of-mental-health-problems/mental-health-problems-introduction/self-care/#.XXEP35NKh8Y"
        UIApplication.shared.open(URL(string:web2)!, options: [:], completionHandler: nil)
    }
    
    @IBAction func Counselling(_ sender: UIButton) {
        let web3 = "https://www.nhs.uk/conditions/counselling/"
        UIApplication.shared.open(URL(string:web3)!, options: [:], completionHandler: nil)
    }
    
    @IBAction func Behaviour(_ sender: UIButton) {
        let web4 = "https://www.dc.nihr.ac.uk/highlights/options-for-depression/behavioural-activation-a-simple-therapy-that-could-make-a-difference-in-depression.htm"
        UIApplication.shared.open(URL(string:web4)!, options: [:], completionHandler: nil)
    }

    @IBAction func IPT(_ sender: UIButton) {
        let web5 = "https://www.counselling-directory.org.uk/interpersonal-therapy.html"
        UIApplication.shared.open(URL(string:web5)!, options: [:], completionHandler: nil)
    }
    
    @IBAction func Mindfullness(_ sender: UIButton) {
        let web6 = "https://www.nhs.uk/conditions/stress-anxiety-depression/mindfulness/"
        UIApplication.shared.open(URL(string:web6)!, options: [:], completionHandler: nil)
    }
    
    @IBAction func Meditation(_ sender: UIButton) {
        let web7 = "https://www.everydayhealth.com/meditation/how-meditation-can-improve-your-mental-health/"
        UIApplication.shared.open(URL(string:web7)!, options: [:], completionHandler: nil)
    }

    
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var CBT: UIButton!
    @IBOutlet weak var SelfHelp: UIButton!
    @IBOutlet weak var Counselling: UIButton!
    @IBOutlet weak var Behaviour: UIButton!
    @IBOutlet weak var IPT: UIButton!
    @IBOutlet weak var Mindfullness: UIButton!
    @IBOutlet weak var Meditation: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
