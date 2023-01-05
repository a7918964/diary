//
//  DiaryTableViewController.swift
//  Trading Diary
//
//  Created by Gary on 2023/1/3.
//

import UIKit

class DiaryTableViewController: UITableViewController {
    
    var records = [Record]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let records = Record.loadRecord(){
//            self.records = records
//        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 0
    //    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return records.count
    }
    @IBAction func unwindToDiaryTableView(_ unwindSegue: UIStoryboardSegue) {
        if let source = unwindSegue.source as? AddDiaryTableViewController?,
           let record = source?.record{
            // Use data from the view controller which initiated the unwind segue
            records.insert(record, at: 0)
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recordCell", for: indexPath) as! RecordTableViewCell
        
        // Configure the cell...
        let record = records[indexPath.row]
        cell.dayTradeLabel.text = records[indexPath.row].DayTrade
        cell.diaryLabel.text = records[indexPath.row].diary
        cell.dateLabel.text = records[indexPath.row].date
        cell.monthLabel.text = records[indexPath.row].month
        cell.yearLabel.text = records[indexPath.row].year
        
        return cell
    }
        
        
        /*
         // Override to support conditional editing of the table view.
         override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the specified item to be editable.
         return true
         }
         */
        
        /*
         // Override to support editing the table view.
         override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
         // Delete the row from the data source
         tableView.deleteRows(at: [indexPath], with: .fade)
         } else if editingStyle == .insert {
         // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
         }
         }
         */
        
        /*
         // Override to support rearranging the table view.
         override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
         
         }
         */
        
        /*
         // Override to support conditional rearranging of the table view.
         override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the item to be re-orderable.
         return true
         }
         */
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
