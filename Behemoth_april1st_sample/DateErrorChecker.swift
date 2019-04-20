//
//  DateErrorChecker.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import Foundation

class DateErrorChecker {
    private let date: Date
    
    init(date: Date) {
        self.date = date
    }
    
    func check() -> DateModel? {
        guard date != Date.distantFuture else {
            print("This app is outdated")
            return nil
        }
        
        return DateModel(date: date)
    }
}
