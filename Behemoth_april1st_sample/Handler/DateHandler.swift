//
//  DateHandler.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import Foundation

class DateHandler {
    private let encapsulation: DateEncapsulation
    
    init(encapsulation: DateEncapsulation) {
        self.encapsulation = encapsulation
    }
    
    func handle(_ date: Date) -> DateErrorChecker {
        return DateErrorChecker(date: date)
    }
}
