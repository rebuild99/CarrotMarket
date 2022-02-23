//
//  ModifyViewController.swift
//  CarrotMarket
//
//  Created by test on 2022/02/22.
//

import UIKit

protocol ModifyViewControllerDelegate {
    func passEntityData(_ tranType: String, _ entity: ItemEntity)
}

class ModifyViewController: UIViewController {
    
    var delegate: ModifyViewControllerDelegate?
    
    var rowIndex = 0
    var tranType = ""
    var itemName = ""
    var itemPrice = ""
    
    @IBOutlet weak var fieldItemName: UITextField!
    @IBOutlet weak var fieldItemPrice: UITextField!
    @IBOutlet weak var tranTypeText: UILabel!
    
    @IBAction func clickedConfirm(_ sender: UIButton) {
        
        let modItemName = fieldItemName.text ?? ""
        let modItemPrice = fieldItemPrice.text ?? ""
        
        self.delegate?.passEntityData(tranType, ItemEntity(cellIndex: rowIndex, itemImage: "backward", itemName: modItemName, itemPrice: modItemPrice))
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickedCancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.fieldItemName.text = self.itemName
        self.fieldItemPrice.text = self.itemPrice
        
        if(tranType == "M") {
            tranTypeText.text = "[변경모드]"
        } else {
            tranTypeText.text = "[등록모드]"
        }
    }
}
