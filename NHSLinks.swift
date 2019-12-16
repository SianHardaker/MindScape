//
//  NHSLinks.swift
//  MindScape
//
//  Created by Sian Hardaker on 17/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class NHSLinks: UIViewController {
    
    
    @IBAction func Home(_ sender: UIButton) {
    }
    @IBAction func Anorexia(_ sender: UIButton) {
        let webLinka = "https://www.nhs.uk/conditions/anorexia/"
        UIApplication.shared.open(URL(string:webLinka)!, options: [:], completionHandler: nil)
    }
    @IBAction func Binge(_ sender: UIButton) {
        let webLinkb = "https://www.nhs.uk/conditions/binge-eating/"
        UIApplication.shared.open(URL(string:webLinkb)!, options: [:], completionHandler: nil)
    }
    @IBAction func Bulimia(_ sender: UIButton) {
        let webLinkc = "https://www.nhs.uk/conditions/bulimia/"
        UIApplication.shared.open(URL(string:webLinkc)!, options: [:], completionHandler: nil)
    }
    @IBAction func BodyDysmophia(_ sender: UIButton) {
        let webLinkd = "https://www.nhs.uk/conditions/body-dysmorphia/"
        UIApplication.shared.open(URL(string:webLinkd)!, options: [:], completionHandler: nil)
    }
    @IBAction func Generalised(_ sender: UIButton) {
        let webLinke = "https://www.nhs.uk/conditions/generalised-anxiety-disorder/"
        UIApplication.shared.open(URL(string:webLinke)!, options: [:], completionHandler: nil)
    }
    @IBAction func Health(_ sender: UIButton) {
        let webLinkf = "https://www.nhs.uk/conditions/health-anxiety/"
        UIApplication.shared.open(URL(string:webLinkf)!, options: [:], completionHandler: nil)
    }
    @IBAction func Panic(_ sender: UIButton) {
        let webLinkg = "https://www.nhs.uk/conditions/panic-disorder/"
        UIApplication.shared.open(URL(string:webLinkg)!, options: [:], completionHandler: nil)
    }
    @IBAction func Phobias(_ sender: UIButton) {
        let webLinkh = "https://www.nhs.uk/conditions/phobias/"
        UIApplication.shared.open(URL(string:webLinkh)!, options: [:], completionHandler: nil)
    }
    @IBAction func OCD(_ sender: UIButton) {
        let webLinki = "https://www.nhs.uk/conditions/obsessive-compulsive-disorder-ocd/"
        UIApplication.shared.open(URL(string:webLinki)!, options: [:], completionHandler: nil)
    }
    @IBAction func Social(_ sender: UIButton) {
        let webLinkj = "https://www.nhs.uk/conditions/social-anxiety/"
        UIApplication.shared.open(URL(string:webLinkj)!, options: [:], completionHandler: nil)
    }
    @IBAction func Bipolar(_ sender: UIButton) {
        let webLinkk = "https://www.nhs.uk/conditions/bipolar-disorder/"
        UIApplication.shared.open(URL(string:webLinkk)!, options: [:], completionHandler: nil)
    }
    @IBAction func Depression(_ sender: UIButton) {
        let webLinkl = "https://www.nhs.uk/conditions/clinical-depression/"
        UIApplication.shared.open(URL(string:webLinkl)!, options: [:], completionHandler: nil)
    }
    @IBAction func SAD(_ sender: UIButton) {
        let webLinkm = "https://www.nhs.uk/conditions/seasonal-affective-disorder-sad/"
        UIApplication.shared.open(URL(string:webLinkm)!, options: [:], completionHandler: nil)
    }
    @IBAction func Psychosis(_ sender: UIButton) {
        let webLinkn = "https://www.nhs.uk/conditions/psychosis/"
        UIApplication.shared.open(URL(string:webLinkn)!, options: [:], completionHandler: nil)
    }
    @IBAction func Schizophrenia(_ sender: UIButton) {
        let webLinko = "https://www.nhs.uk/conditions/schizophrenia/"
        UIApplication.shared.open(URL(string:webLinko)!, options: [:], completionHandler: nil)
    }
    @IBAction func Antisocial(_ sender: UIButton) {
        let webLinkp = "https://www.nhs.uk/conditions/antisocial-personality-disorder/"
        UIApplication.shared.open(URL(string:webLinkp)!, options: [:], completionHandler: nil)
    }
    @IBAction func Borderline(_ sender: UIButton) {
        let webLinkq = "https://www.nhs.uk/conditions/borderline-personality-disorder/"
        UIApplication.shared.open(URL(string:webLinkq)!, options: [:], completionHandler: nil)
    }
    
    
    @IBOutlet weak var Anorexia: UIButton!
    @IBOutlet weak var Binge: UIButton!
    @IBOutlet weak var Bulimia: UIButton!
    @IBOutlet weak var Phobias: UIButton!
    @IBOutlet weak var Generalised: UIButton!
    @IBOutlet weak var Health: UIButton!
    @IBOutlet weak var Panic: UIButton!
    @IBOutlet weak var OCD: UIButton!
    @IBOutlet weak var Social: UIButton!
    @IBOutlet weak var Bipolar: UIButton!
    @IBOutlet weak var Depression: UIButton!
    @IBOutlet weak var SAD: UIButton!
    @IBOutlet weak var Psychosis: UIButton!
    @IBOutlet weak var Schizophrenia: UIButton!
    @IBOutlet weak var Antisocial: UIButton!
    @IBOutlet weak var Borderline: UIButton!
    @IBOutlet weak var BodyDysmophia: UIButton!
    @IBOutlet weak var Home: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Binge.layer.cornerRadius = 25.0
        Anorexia.layer.cornerRadius = 25.0
        Bulimia.layer.cornerRadius = 25.0
        Generalised.layer.cornerRadius = 25.0
        Phobias.layer.cornerRadius = 25.0
        Social.layer.cornerRadius = 25.0
        Panic.layer.cornerRadius = 25.0
        OCD.layer.cornerRadius = 25.0
        BodyDysmophia.layer.cornerRadius = 25.0
        Phobias.layer.cornerRadius = 25.0
        Bipolar.layer.cornerRadius = 25.0
        SAD.layer.cornerRadius = 25.0
        Psychosis.layer.cornerRadius = 25.0
        Schizophrenia.layer.cornerRadius = 25.0
        Depression.layer.cornerRadius = 25.0
        Borderline.layer.cornerRadius = 25.0
        Antisocial.layer.cornerRadius = 25.0
        Health.layer.cornerRadius = 25.0
    }
}
