//
//  ContentScrollViewController.swift
//  ios-26-navbar-bug-example
//
//  Created by Simon Vaular on 01/09/2025.
//

import UIKit

final class ContentScrollViewController: UIViewController {

    let scrollView = UIScrollView()
    private let stack = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear

        setupScrollView()
        populateDummyContent()
    }

    private func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .systemBackground
        scrollView.alwaysBounceVertical = true
        scrollView.contentInsetAdjustmentBehavior = .never // allow underlaps
        view.addSubview(scrollView)

        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        stack.axis = .vertical
        stack.spacing = 12
        stack.translatesAutoresizingMaskIntoConstraints = false

        scrollView.addSubview(stack)

        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stack.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 16),
            stack.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -16),
            stack.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor)
        ])
    }

    private func populateDummyContent() {
        // Add enough content to scroll
        for i in 1...40 {
            let view = UIView()
            view.heightAnchor.constraint(equalToConstant: 100).isActive = true
            view.backgroundColor = (i % 2 == 0) ? UIColor.black : UIColor.systemGray5

            stack.addArrangedSubview(view)
        }
    }
}
