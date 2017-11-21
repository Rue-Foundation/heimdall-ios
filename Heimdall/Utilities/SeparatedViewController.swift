//
//  SeparatedViewController.swift
//  Heimdall
//
//  Created by Luis Reisewitz on 13.11.17.
//  Copyright © 2017 Gnosis. All rights reserved.
//

import ReactiveKit
import UIKit

protocol SeparatedView {
    init()
}

class SeparatedViewController<ViewType: SeparatedView & UIView>: UIViewController {
    let customView = ViewType()
    let disposeBag = DisposeBag()

    required init?(coder aDecoder: NSCoder) {
        dieFromCoder()
    }

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        view = customView
    }
}
