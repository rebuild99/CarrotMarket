//
//  ViewController.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var itemTableView : UITableView!
    
    let itemModel = ItemModel()
    
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
    
    override func viewWillAppear(_ animated: Bool) {
        self.itemTableView.reloadData()
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemModel.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Model의 배열 index번호 update
        itemModel.updateIndex(indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableCell.identifier, for: indexPath) as! ItemTableCell
        let cellItem = itemModel.getData(indexPath.row)
        
        cell.setupData(cellItem)
        cell.delegate = self
                
        return cell
    }
}


extension ViewController: CellDelegate, ModifyViewControllerDelegate {

    // 변경화면 출력(from: ItemTableCell)
    func presentModifyView(_ cellIndex: Int) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let modifyVC = storyBoard.instantiateViewController(withIdentifier: "modifyViewController") as? ModifyViewController {
            // 셀의 변경버튼 클릭 시 변경화면 출력
            modifyVC.delegate = self
            modifyVC.rowIndex = cellIndex
            
            self.present(modifyVC, animated: true)
        }
    }
    
    // 변경화면>확인버튼 클릭
    func passEntityData(_ entity: ItemEntity) {
        print("entity.itemName = \(entity.itemName)")
        print("entity.itemPrice = \(entity.itemPrice)")
        
        itemModel.updateData(entity.cellIndex, entity.itemName)
        print(itemModel.getData(0))
        
        viewWillAppear(true)
    }
}

