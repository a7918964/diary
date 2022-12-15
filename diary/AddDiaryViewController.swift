//
//  AddDiaryViewController.swift
//  diary
//
//  Created by Gary on 2022/12/15.
//

import UIKit

class AddDiaryViewController: UIViewController {
    
    @IBOutlet weak var diaryTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diaryTextView.text = "請輸入文字"
        diaryTextView.textColor = UIColor.lightGray
        if diaryTextView.isEditable == true{
            textViewDidBeginEditing(diaryTextView)
        }
        if diaryTextView.isEditable == false{
            textViewDidEndEditing(diaryTextView)
        }
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if diaryTextView.textColor == UIColor.lightGray {
            diaryTextView.text = nil
            diaryTextView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if diaryTextView.text.isEmpty {
            diaryTextView.text = "請輸入文字"
            diaryTextView.textColor = UIColor.lightGray
        }
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
