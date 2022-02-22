//
//  ModifyViewController.swift
//  CarrotMarket
//
//  Created by test on 2022/02/22.
//

import UIKit

protocol ModifyViewControllerDelegate {
    func passEntityData(_ entity: ItemEntity)
}

class ModifyViewController: UIViewController {
    
    var delegate: ModifyViewControllerDelegate?
    
    var rowIndex = 0
    
    @IBOutlet weak var fieldItemName: UITextField!
    @IBOutlet weak var fieldItemPrice: UITextField!
    
    @IBAction func clickedConfirm(_ sender: UIButton) {
        
        let modItemName = fieldItemName.text ?? ""
        let modItemPrice = fieldItemPrice.text ?? ""
        
        self.delegate?.passEntityData(ItemEntity(cellIndex: rowIndex, itemImage: "", itemName: modItemName, itemPrice: modItemPrice))
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func clickedCancel(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
