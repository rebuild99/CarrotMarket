//
//  ViewController.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import UIKit
import JJFloatingActionButton

class ViewController: UIViewController{

    @IBOutlet weak var itemTableView : UITableView!
    
    var itemModel = ItemModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
        floattingFirstBtn()
    }
    
    func setupTableView() {
        
        self.itemTableView.register(UINib(nibName: "ItemTableCell", bundle: nil), forCellReuseIdentifier: ItemTableCell.identifier)
        self.itemTableView.delegate = self
        self.itemTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.itemTableView.reloadData()
    }
    
    
    func floattingFirstBtn() {
        let actionButton = JJFloatingActionButton()
        actionButton.buttonColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        
        actionButton.addItem(title: "", image: nil, action: { item in
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            if let modifyVC = storyBoard.instantiateViewController(withIdentifier: "modifyViewController") as? ModifyViewController {
                // 셀의 변경버튼 클릭 시 변경화면 출력
                modifyVC.delegate = self
                modifyVC.tranType = "I"
                self.present(modifyVC, animated: true)
            }
        })
        
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.display(inViewController: self)
    }
    

    func floattingSecondBtn() {
        let secondActionBtn = JJFloatingActionButton()
        
        secondActionBtn.buttonColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)

        secondActionBtn.addItem(title: "", image: nil) { item in
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            if let modifyVC = storyBoard.instantiateViewController(withIdentifier: "modifyViewController") as? ModifyViewController {
                // 셀의 변경버튼 클릭 시 변경화면 출력
                modifyVC.delegate = self
                self.present(modifyVC, animated: true)
            }
        }

        view.addSubview(secondActionBtn)
        secondActionBtn.translatesAutoresizingMaskIntoConstraints = false
        
        secondActionBtn.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        secondActionBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(itemModel.getCount())
        return itemModel.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Model의 배열 index번호 update
        // itemModel.updateIndex(indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableCell.identifier, for: indexPath) as! ItemTableCell
        let cellItem = itemModel.getData(indexPath.row)
        
        cell.setupData(cellItem, indexPath.row)
        cell.delegate = self
                
        return cell
    }
}


extension ViewController: CellDelegate, ModifyViewControllerDelegate {
   
    // 변경버튼 클릭-> 변경화면 출력(from: ItemTableCell)
    func presentModifyView(_ cellIndex: Int) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let modifyVC = storyBoard.instantiateViewController(withIdentifier: "modifyViewController") as? ModifyViewController {
            // 셀의 변경버튼 클릭 시 변경화면 출력
            modifyVC.delegate = self
            modifyVC.rowIndex = cellIndex
            modifyVC.tranType = "M"
            
            print(itemModel.getData(cellIndex))
            
            modifyVC.itemName   = itemModel.getData(cellIndex).itemName
            modifyVC.itemPrice  = itemModel.getData(cellIndex).itemPrice
            
            self.present(modifyVC, animated: true)
        }
    }
    
    // 삭제버튼 클릭-> 삭제액션
    func deleteCell(_ cellIndex: Int) {
        self.itemModel.deleteData(cellIndex)
        viewWillAppear(true)
    }
    
    // 변경화면>확인버튼 클릭
    func passEntityData(_ tranType: String, _ entity: ItemEntity) {
        if(tranType == "I") {
            //등록모드
            itemModel.insertData(entity)
        } else {
            // 수정모드
            itemModel.updateData(entity.cellIndex, entity)
        }

        viewWillAppear(true)
    }
}

