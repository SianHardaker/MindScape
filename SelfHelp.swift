//
//  SelfHelp.swift
//  MindScape
//
//  Created by Sian Hardaker on 17/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class SelfHelp: UIViewController{
    
    
    @IBAction func Home(_ sender: UIButton) {
    }
    @IBAction func Exercise(_ sender: UIButton) {
        let webLink8 = "https://www.swansea.ac.uk/sport/student-sport/sports-clubs/"
        UIApplication.shared.open(URL(string:webLink8)!, options: [:], completionHandler: nil)
    }
    @IBAction func Nutrition(_ sender: UIButton) {
        let webLink9 = "https://www.mind.org.uk/information-support/tips-for-everyday-living/food-and-mood/#.XWE4R5NKh8Y"
        UIApplication.shared.open(URL(string:webLink9)!, options: [:], completionHandler: nil)
    }
    @IBAction func Journalling(_ sender: UIButton) {
        let webLink10 = "https://lonerwolf.com/journaling/"
        UIApplication.shared.open(URL(string:webLink10)!, options: [:], completionHandler: nil)
    }
    @IBAction func Sleep(_ sender: UIButton) {
        let webLink11 = "https://www.nhs.uk/live-well/sleep-and-tiredness/"
        UIApplication.shared.open(URL(string:webLink11)!, options: [:], completionHandler: nil)
    }
    @IBAction func Crafts(_ sender: UIButton) {
        let webLink12 = "https://www.mind.org.uk/information-support/drugs-and-treatments/arts-and-creative-therapies/#.XWE3gJNKh8Y"
        UIApplication.shared.open(URL(string:webLink12)!, options: [:], completionHandler: nil)
    }
    @IBAction func Socialise(_ sender: UIButton) {
        let webLink13 = "https://www.swansea-union.co.uk/activities/societies/join/"
        UIApplication.shared.open(URL(string:webLink13)!, options: [:], completionHandler: nil)
    }
    
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var Exercise: UIButton!
    @IBOutlet weak var Nutrition: UIButton!
    @IBOutlet weak var Journalling: UIButton!
    @IBOutlet weak var Sleep: UIButton!
    @IBOutlet weak var Crafts: UIButton!
    @IBOutlet weak var Socialise: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
