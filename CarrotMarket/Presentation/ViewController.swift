//
//  ViewController.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var itemTableView : UITableView!
    
    var itemModel = ItemModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    func setupTableView() {
        self.itemTableView.register(UINib(nibName: "ItemTableCell", bundle: nil), forCellReuseIdentifier: ItemTableCell.identifier)
        
        self.itemTableView.delegate = self
        self.itemTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemModel.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableCell.identifier, for: indexPath) as! ItemTableCell
        
        let cellItem = itemModel.getData(indexPath.row)
        
        cell.setupData(cellItem)
        
        return cell
    }
}

