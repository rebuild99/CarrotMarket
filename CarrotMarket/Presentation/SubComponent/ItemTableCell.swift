//
//  ItemTableCell.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import UIKit

protocol CellDelegate {
    func presentModifyView(_ cellIndex: Int)
}

class ItemTableCell: UITableViewCell {
    

    static let identifier = "itemCell"
    
    var delegate: CellDelegate?
    
    @IBOutlet weak var cellIndex: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    @IBAction func clieckedBtn(_ sender: UIButton) {
        
        let index = Int(cellIndex.text ?? "0") ?? 0
        self.delegate?.presentModifyView(index)
    }
    
    func setupData(_ data: ItemEntity) {
        cellIndex.text = String(data.cellIndex)
        itemImage.image = UIImage(systemName: data.itemImage)
        itemName.text = data.itemName
        itemPrice.text = data.itemPrice
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
