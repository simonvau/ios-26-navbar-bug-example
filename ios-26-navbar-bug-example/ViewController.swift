//
//  ViewController.swift
//  ios-26-navbar-bug-example
//
//  Created by Simon Vaular on 01/09/2025.
//

import UIKit

class ViewController: UIViewController {

    private let headerVC = HeaderViewController()
    private let contentVC = ContentScrollViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Example"

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .plain, target: self, action: #selector(dummyAction))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Right", style: .plain, target: self, action: #selector(dummyAction))

        addChildren()
    }

    @objc private func dummyAction() {
        print("Clicked!")
    }

    private func addChildren() {
        addChild(contentVC)
        contentVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentVC.view)
        contentVC.didMove(toParent: self)

        addChild(headerVC)
        headerVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerVC.view)
        headerVC.didMove(toParent: self)

        let headerHeight: CGFloat = 120

        NSLayoutConstraint.activate([
            // Content fills whole screen
            contentVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentVC.view.topAnchor.constraint(equalTo: view.topAnchor),
            contentVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            // Header pinned to top
            headerVC.view.topAnchor.constraint(equalTo: view.topAnchor),
            headerVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerVC.view.heightAnchor.constraint(equalToConstant: headerHeight)
        ])
    }
}
