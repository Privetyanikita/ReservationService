//
//  TableViewBilder.swift
//  ReservantionService
//
//  Created by NikitaKorniuk   on 06.09.24.
//

import UIKit

class TableViewBilder:NSObject, UITableViewDelegate, UITableViewDataSource {
        
    private weak var tableView:UITableView?
    var section: [TableViewSectionModel] = []
    
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    //MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
}
