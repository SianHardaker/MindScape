//
//  Tracker.swift
//  MindScape
//
//  Created by Sian Hardaker on 17/08/2019.
//  Copyright © 2019 Sian Hardaker. All rights reserved.
//

import UIKit

var dateString = ""

class Tracker: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var Calendar: UICollectionView!
    @IBOutlet weak var MonthLabel: UILabel!
    @IBOutlet weak var Home: UIButton!
    
    @IBAction func Home(_ sender: UIButton) {
    }
    
    let Months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    let DaysofMonth = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    var DaysInMonths = [31,28,31,30,31,30,31,31,30,31,30,31]
    var currentMonth = String()
    var NumberOfEmptyBox = Int() //The number of "empty boxes"
    var NextNumberOfEmptyBox = Int() //The same as above but with the next month
    var PreviousNumberOfEmptyBox = 0 //The same as above but with the prev month
    var Direction = 0 // =0 if at the current month, = 1 if we are in the future, = -1 if we are int the past
    var PositionIndex = 0 //store the above vars of the empty boxes
    var LeapYearCounter = 3 //3 beacause the next time february has 29 days is in a years time
    var dayCounter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentMonth = Months[month]
        
        MonthLabel.text = "\(currentMonth) \(year)"
        if weekday == 0 {
            weekday = 7
        }

        GetStartDateDayPosition()
        
    }
    
//------------------------(Next and back buttons)---------------------------------------//
    
    @IBAction func Next(_ sender: UIButton) {
        switch currentMonth {
        case "December":
            month = 0
            year += 1
            Direction = 1
            
            if LeapYearCounter < 5 {
                LeapYearCounter += 1
            }
            
            if LeapYearCounter == 4 {
                DaysInMonths[1] = 29
            }
            
            if LeapYearCounter == 5 {
                LeapYearCounter = 1
                DaysInMonths[1] = 28
            }
            
            GetStartDateDayPosition()
            
            currentMonth = Months[month]
            MonthLabel.text = "\(currentMonth) \(year)"
            Calendar.reloadData()
        default:
            Direction = 1
            
            GetStartDateDayPosition()
            
            month += 1
            
            currentMonth = Months[month]
            MonthLabel.text = "\(currentMonth) \(year)"
            Calendar.reloadData()
        }
    }
    @IBAction func Back(_ sender: UIButton) {
        switch currentMonth {
        case "January":
            month = 11
            year -= 1
            Direction = -1
            
            if LeapYearCounter > 0 {
                LeapYearCounter -= 1
            }
            
            if LeapYearCounter == 0 {
                DaysInMonths[1] = 29
                LeapYearCounter = 4
            } else {
                DaysInMonths[1] = 28
            }
            
            GetStartDateDayPosition()
            
            currentMonth = Months[month]
            MonthLabel.text = "\(currentMonth) \(year)"
            Calendar.reloadData()
        default:
            month -= 1
            Direction = -1
            
            GetStartDateDayPosition()
            
            currentMonth = Months[month]
            MonthLabel.text = "\(currentMonth) \(year)"
            Calendar.reloadData()
        }
    }

//-----------------(Calculates the number of empty boxes at the start of every month)---------------//
    func GetStartDateDayPosition() { //this function gives us the number of empty boxes
        switch Direction {
        case 0: //if we are at the current month
            NumberOfEmptyBox = weekday
            dayCounter = day
            while dayCounter > 0 {
                NumberOfEmptyBox = NumberOfEmptyBox - 1
                dayCounter = dayCounter - 1
                if NumberOfEmptyBox == 0 {
                    NumberOfEmptyBox = 7
                }
            }
            if NumberOfEmptyBox == 7 {
                NumberOfEmptyBox = 0
            }
            PositionIndex = NumberOfEmptyBox
        case 1...: //if we are at a future month
            NextNumberOfEmptyBox = (PositionIndex + DaysInMonths[month])%7
            PositionIndex = NextNumberOfEmptyBox
            
        case -1: //if we are at a past month
            PreviousNumberOfEmptyBox = (7 - (DaysInMonths[month] - PositionIndex)%7)
            if PreviousNumberOfEmptyBox == 7 {
                PreviousNumberOfEmptyBox = 0
            }
            PositionIndex = PreviousNumberOfEmptyBox
        default:
            fatalError()
        }
    }


    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch Direction { //returns the number of days in the month + the number of empty boxes based on the direction we are going
        case 0:
            return DaysInMonths[month] + NumberOfEmptyBox
        case 1...:
            return DaysInMonths[month] + NextNumberOfEmptyBox
        case -1:
            return DaysInMonths[month] + PreviousNumberOfEmptyBox
        default:
            fatalError()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Calendar" , for: indexPath) as! DataCollectionViewCell
        cell.backgroundColor = UIColor.clear
        
        cell.DateLabel.textColor = UIColor.black
        
        cell.Circle.isHidden = true
        
        if cell.isHidden {
            cell.isHidden = false
        }
        
        switch Direction {
        case 0:
            cell.DateLabel.text = "\(indexPath.row + 1 - NumberOfEmptyBox)"
        case 1...:
            cell.DateLabel.text = "\(indexPath.row + 1 - NextNumberOfEmptyBox)"
        case -1:
            cell.DateLabel.text = "\(indexPath.row + 1 - PreviousNumberOfEmptyBox)"
        default:
            fatalError()
        }
        
        if Int(cell.DateLabel.text!)! < 1 { //hides every cell smaller than 1
            cell.isHidden = true
        }
        
        //show the weekend days in different colour
        
        switch indexPath.row {
        case 5,6,12,13,19,20,26,27,33,34: //indexes of collection view that match the weekend
            if  Int(cell.DateLabel.text!)! > 0 {
                cell.DateLabel.textColor = UIColor.lightGray
            }
        default:
            break
        }
        //marks red the cell that shows the current date
        if currentMonth == Months[calendar.component(.month, from: date) - 1] && year == calendar.component(.year, from: date) && indexPath.row - 5 == day{
            cell.Circle.isHidden = false
            cell.DrawCircle()
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        dateString = "\(indexPath.row - PositionIndex + 1) \(currentMonth) \(year)"
        
        performSegue(withIdentifier: "SpecificDate", sender: self)
    }
    
}

