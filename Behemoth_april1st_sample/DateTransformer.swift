//
//  DateTransformer.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import Foundation

class DateTransformer {
    var isAprilFoolsDay: Bool {
        let calendar = Calendar.current
        let month = calendar.component(.month, from: observer.date)
        let day = calendar.component(.day, from: observer.date)
        return month == 4 && day == 1
    }
    
    private let observer: DateObserver
    
    init(observer: DateObserver) {
        self.observer = observer
    }
}
