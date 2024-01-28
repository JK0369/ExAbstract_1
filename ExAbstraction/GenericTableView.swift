//
//  GenericTableView.swift
//  ExAbstraction
//
//  Created by 김종권 on 2024/01/28.
//

import UIKit

protocol TableViewCellable where Self: UITableViewCell {
    associatedtype D
    
    func configure(_ value: D)
}

final class GenericTableView<CellType: TableViewCellable>: UITableView, UITableViewDataSource {
    private var cellType = CellType.self
    private var cellDatas = [CellType.D]()
    private var cellID: String {
        String(describing: cellType)
    }

    init() {
        super.init(frame: .zero, style: .plain)
        dataSource = self
        register(cellType, forCellReuseIdentifier: cellID)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateData(_ datas: [CellType.D]) {
        cellDatas = datas
        reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellDatas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? CellType
        else { return UITableViewCell() }
        
        cell.configure(cellDatas[indexPath.row])
        return cell
    }
}
