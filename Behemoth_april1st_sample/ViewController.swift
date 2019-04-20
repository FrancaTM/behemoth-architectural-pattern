//
//  ViewController.swift
//  Behemoth_april1st_sample
//
//  Created by Tulio Marcos Franca on 19/04/19.
//  Copyright © 2019 Tulio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backend = DateBackend()
        let encapsulation = DateEncapsulation(backend: backend)
        let handler = DateHandler(encapsulation: encapsulation)
        let errorChecker = handler.handle(encapsulation.provideDate())
        let model = errorChecker.check()
        let observer = model?.observe()
        let transformer = observer.map(DateTransformer.init)
        let humanInterface = DateHumanInterface()
        
        humanInterface.add(to: view)
        transformer.map(humanInterface.update)        
    }
}

