//
//  DateHumanInterface.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import Foundation
import UIKit

class DateHumanInterface {
    private let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    
    func add(to view: UIView) {
        label.textAlignment = .center
        label.center = view.center
        label.font = UIFont.preferredFont(forTextStyle: .footnote)
        label.textColor = .black
        
        view.addSubview(label)
    }
    
    func update(with transformer: DateTransformer) {
        if transformer.isAprilFoolsDay {
            label.text = "HAPPY APRIL FOOLS' DAY!"
        } else {
            label.text = "HAPPY NOT APRIL FOOLS' DAY!"
        }
    }
}
