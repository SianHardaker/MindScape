//
//  UsefulApps.swift
//  MindScape
//
//  Created by Sian Hardaker on 17/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

class UsefulApps: UIViewController {
    
    
    @IBAction func Home(_ sender: UIButton) {
    }
    @IBAction func Happify(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/happify-for-stress-worry/id730601963"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func MindShift(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/mindshift-cbt-anxiety-canada/id634684825"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func MoodKit(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/moodkit/id427064987"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func Moodpath(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/moodpath-depression-anxiety/id1052216403"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func WellMind(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/wellmind/id918138339"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func Calm(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/calm-meditation-and-sleep/id571800810"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    @IBAction func Headspace(_ sender: UIButton) {
        let appStoreLink = "https://apps.apple.com/gb/app/headspace-meditation-sleep/id493145008"
        UIApplication.shared.open(URL(string:appStoreLink)!, options: [:], completionHandler: nil)
    }
    
    
    @IBOutlet weak var Home: UIButton!
    @IBOutlet weak var Headspace: UIButton!
    @IBOutlet weak var Calm: UIButton!
    @IBOutlet weak var WellMind: UIButton!
    @IBOutlet weak var Moodpath: UIButton!
    @IBOutlet weak var MoodKit: UIButton!
    @IBOutlet weak var MindShift: UIButton!
    @IBOutlet weak var Happify: UIButton!
    @IBOutlet weak var HappifyDesc: UILabel!
    @IBOutlet weak var MindShiftDesc: UILabel!
    @IBOutlet weak var MoodKitDesc: UILabel!
    @IBOutlet weak var MoodpathDesc: UILabel!
    @IBOutlet weak var WellMindDesc: UILabel!
    @IBOutlet weak var CalmDesc: UILabel!
    @IBOutlet weak var HeadspaceDesc: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
