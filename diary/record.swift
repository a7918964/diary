//
//  record.swift
//  Stock Diary
//
//  Created by Gary on 2022/12/21.
//

import Foundation

struct Record:Codable{
    var title:String
    
    static let documentDirectoy = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let key = "record"
    
    static func saveToFile(records:[Record]){
        let propertyEncoder = PropertyListEncoder()
        
        if let data = try? propertyEncoder.encode(records){
            let url = Record.documentDirectoy.appending(path: key)
            try? data.write(to: url)
        }
    }
    
    static func readFromFile() -> [Record]?{
        let propertyDecoder = PropertyListDecoder()
        let url = Record.documentDirectoy.appending(path: key)
        if let data = try? Data(contentsOf: url), let records = try? propertyDecoder.decode([Record].self, from: data){
            return records
        }else{
            return nil
        }
    }
    
    static func deleteFile(){
        do{
            let url = Record.documentDirectoy.appending(path: key)
            try FileManager.default.removeItem(at: url)
        }catch{
            print(error.localizedDescription)
        }
    }
    
    
    
    
    
    
    
    
    
}
