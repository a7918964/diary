//
//  CalendarViewController.swift
//  diary
//
//  Created by Gary on 2022/12/7.
//

import UIKit
import FSCalendar
import Firebase
import FirebaseAuth
import FirebaseFirestore
import CoreData

class CalendarViewController: UIViewController,FSCalendarDelegate,FSCalendarDataSource {
    
    let db = Firestore.firestore()
    //let userID = Auth.auth().currentUser!.uid
    var dateString = ""
        //紀錄有事件的日期，依據事件數量分為兩個
    var datesWithEvent = [String]()//小於等於3件事
    var datesWithMultipleEvents = [String]()//大於3件事
        //連結到Storyboard剛剛新增的FSCalendar
    @IBOutlet var calendar: FSCalendar!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //loadDateEvent()
        calendar.delegate = self
        calendar.dataSource = self
        calendar.appearance.headerTitleColor = UIColor(named: "#3D538B")
        calendar.today = nil
        calendar.appearance.selectionColor = UIColor.blue
        calendar.appearance.weekdayTextColor = UIColor(named: "#3D538B")
        calendar.scrollDirection = .horizontal
        calendar.appearance.todayColor = UIColor.orange
    }
    override func viewWillAppear(_ animated: Bool) {
        //loadDateEvent()
        //重載calendar.資料
        calendar.reloadData()
    }
        
    override func viewDidDisappear(_ animated: Bool) {
        datesWithEvent = []
        datesWithMultipleEvents = []
    }
    fileprivate lazy var dateFormatter2: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
        }()
    private func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) -> Int {
        return 0
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
