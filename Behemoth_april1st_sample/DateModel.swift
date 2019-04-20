//
//  DateModel.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import Foundation

class DateModel {
    private var date: Date
    private var observers = [(Date) -> Void]()
    
    init(date: Date) {
        self.date = date
    }
    
    func observe() -> DateObserver {
        let observer = DateObserver(date: date)
        observers.append { observer.date = $0 }
        return observer
    }
}
