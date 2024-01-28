//
//  CustomCell.swift
//  ExAbstraction
//
//  Created by 김종권 on 2024/01/28.
//

import UIKit

class CustomCell2: UITableViewCell, TableViewCellable {
    typealias D = String
    
    private let titleLabel = {
        let l = UILabel()
        l.textColor = .black
        l.font = .systemFont(ofSize: 24)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(_ value: String) {
        titleLabel.text = value
    }
    
    private func setupUI() {
        contentView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
        ])
    }
}
