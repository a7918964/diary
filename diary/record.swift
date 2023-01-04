//
//  record.swift
//  Stock Diary
//
//  Created by Gary on 2022/12/21.
//

import Foundation

struct Record:Codable{
    var date:String
    var diary:String
    var DayTrade:Int //當日損益
    var equity:Int //權益數
    
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static func saveRecord(_ record:[Record]){
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(record) else {return}
        let url = documentsDirectory.appending(path: "record")
        try? data.write(to: url)
    }
    static func loadRecord() -> [Record]? {
        let url = documentsDirectory.appending(path: "record")
        guard let data = try? Data(contentsOf: url) else {return nil}
        let decoder = JSONDecoder()
        return try? decoder.decode([Record].self, from: data)
    }
}
