//
//  HeaderViewController.swift
//  ios-26-navbar-bug-example
//
//  Created by Simon Vaular on 01/09/2025.
//

import UIKit

final class HeaderViewController: UIViewController {

    private let backgroundView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .purple
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(backgroundView)

        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
