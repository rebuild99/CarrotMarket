//
//  MenuTableCell.swift
//  CarrotMarket
//
//  Created by test on 2022/02/26.
//

import UIKit

class MenuTableCell: UITableViewCell {
    
    @IBOutlet weak var leftImgView: UIImageView!
    @IBOutlet weak var topTitle: UILabel!
    
    static let identifier = "menuTableCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
