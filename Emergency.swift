//
//  Emergency.swift
//  MindScape
//
//  Created by Sian Hardaker on 17/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class Emergency: UIViewController {
    
    
    @IBAction func Home(_ sender: UIButton) {
    }
    @IBAction func Samaritans(_ sender: UIButton) {
        guard let numberString = sender.titleLabel?.text, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        UIApplication.shared.open(url)
    }

    @IBAction func NHS(_ sender: UIButton) {
        guard let numberString = sender.titleLabel?.text, let url = URL(string:"telprompt://\(numberString)") else {
            return
        }
        UIApplication.shared.open(url)
    }
    @IBAction func GP(_ sender: UIButton) {
        let webLink = "https://www.wales.nhs.uk/ourservices/directory/swanseabayuniversityhealthboard/gps"
        UIApplication.shared.open(URL(string:webLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func Hospital(_ sender: UIButton) {
        let webLink = "https://www.wales.nhs.uk/ourservices/directory/Hospitals"
        UIApplication.shared.open(URL(string:webLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func Mind(_ sender: UIButton) {
        let webLink = "https://www.mind.org.uk/"
        UIApplication.shared.open(URL(string:webLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func Papyrus(_ sender: Any) {
        let webLink = "https://www.papyrus-uk.org"
        UIApplication.shared.open(URL(string:webLink)!, options: [:], completionHandler: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var Samaritans: UIButton!
    @IBOutlet weak var GP: UIButton!
    @IBOutlet weak var NHS: UIButton!
    @IBOutlet weak var Hospital: UIButton!
    @IBOutlet weak var Mind: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
