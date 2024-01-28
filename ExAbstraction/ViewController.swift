//
//  ViewController.swift
//  ExAbstraction
//
//  Created by 김종권 on 2024/01/27.
//

import UIKit

//class CustomCell: UITableViewCell {
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        backgroundColor = .lightGray
//        textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
//        textLabel?.textColor = .blue
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

class ViewController: UIViewController {
//    let tableView = UITableView()
    let tableView = GenericTableView<CustomCell2>()
    let data = [1, 2, 3, 4, 5].map(String.init)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.frame = view.bounds
        view.addSubview(tableView)
        tableView.updateData(data)
    }
}

//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        data.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
//        let number = data[indexPath.row]
//        cell.textLabel?.text = "\(number)"
//        return cell
//    }
//}
