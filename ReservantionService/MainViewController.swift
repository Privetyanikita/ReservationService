//
//  ViewController.swift
//  ReservantionService
//
//  Created by NikitaKorniuk   on 01.09.24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let element = UITableView(frame: self.view.bounds, style: .plain)
        element.register(UITableViewCell.self, forCellReuseIdentifier: "customID")
        element.backgroundColor = .systemBackground
        return element
    }()
    
    private var tableViewBuilder: TableViewBuilder!
    private var dataModel:[DataModel] = [
        DataModel(text: "Vasya"),
        DataModel(text: "Dima"),
        DataModel(text: "Ivan"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstrains()
        configureTableView()
    }
    
    private func setupViews(){
        view.add(subviews: tableView)
    }
    
    private func configureTableView() {
        tableViewBuilder = TableViewBuilder(tableView: tableView)
        tableViewBuilder.sections = [createSection()]
        tableView.reloadData()
    }
    
    private func createSection() -> TableViewSectionModel {
        let cellModels = dataModel.map { createCellModel(data: $0) }
        let sectionModel = TableViewSectionModel(cells: cellModels, header: "Section Header")
        return sectionModel
    }
    
    private func createCellModel(data: DataModel) -> TableViewCellModel {
        let cellModel = TableViewCellModel(identifier: "customID")
        
        cellModel.onFill = { cell in
            cell.textLabel?.text = data.text
        }
        
        cellModel.onSelect = {
            print(data.comandText)
        }
        
        return cellModel
    }
    
}

extension MainViewController {
    private func setupConstrains(){
        tableView.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.trailing.equalToSuperview()
        }
    }
}

