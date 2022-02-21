//
//  ItemTableCell.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import UIKit

class ItemTableCell: UITableViewCell {

    static let identifier = "itemCell"
    
    @IBOutlet weak var itemName: UILabel!
    
    func setupData(_ data: ItemEntity) {
        itemName.text = data.itemName
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
