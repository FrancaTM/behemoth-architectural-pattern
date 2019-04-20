//
//  DateEncapsulation.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import Foundation

class DateEncapsulation {
    private let backend: DateBackend
    
    init(backend: DateBackend) {
        self.backend = backend
    }
    
    func provideDate() -> Date {
        return backend.makeDate()
    }
}

