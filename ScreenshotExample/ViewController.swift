//
//  ViewController.swift
//  ScreenshotExample
//
//  Created by Daan van de Westelaken on 23/11/2022.
//

import UIKit

class ViewController: UIViewController {

	private let label = UILabel()

	override func viewDidLoad() {
		super.viewDidLoad()

		view.backgroundColor = .white

		label.textColor = .black
		label.text = "Lorem ipsum dolor sit"
		label.font = .systemFont(ofSize: 20)

		view.addSubview(label)

		label.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
			label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
		])
	}
}

