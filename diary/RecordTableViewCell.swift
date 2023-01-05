//
//  RecordTableViewCell.swift
//  Trading Diary
//
//  Created by Gary on 2023/1/4.
//

import UIKit

class RecordTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var diaryLabel: UILabel!
    @IBOutlet weak var dayTradeLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
