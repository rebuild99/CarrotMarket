//
//  ItemTableCell.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import UIKit

protocol CellDelegate {
    func presentModifyView(_ cellIndex: Int)
    func deleteCell(_ cellIndex: Int)
}

class ItemTableCell: UITableViewCell {
    

    static let identifier = "itemCell"
    
    var delegate: CellDelegate?
    var index = 0
    var tranType = ""
    
    @IBOutlet weak var cellIndex: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    
    // 변경버튼 선택
    @IBAction func clieckedModifyBtn(_ sender: UIButton) {
        self.delegate?.presentModifyView(self.index)
    }
    
    // 삭제버튼 선택
    @IBAction func clickedDeleteBtn(_ sender: UIButton) {
        self.delegate?.deleteCell(self.index)
    }
    
    func setupData(_ data: ItemEntity, _ index: Int) {
        
        self.index = index
        
        //cellIndex.text = String(data.cellIndex)
        cellIndex.text = String(self.index)
        itemImage.image = UIImage(systemName: data.itemImage)
        itemName.text = data.itemName
        
        itemPrice.text = DecimalWon(value: Int(data.itemPrice) ?? 0)
    }
    
    func DecimalWon(value: Int) -> String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        let result = numberFormatter.string(from: NSNumber(value: value))! + " 원"
        
        return result
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
