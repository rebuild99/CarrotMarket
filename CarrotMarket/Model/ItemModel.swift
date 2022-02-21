//
//  ItemModel.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import Foundation

class ItemModel {
    
    var itemArray:[ItemEntity] = []
    
    init() {
        setData()
    }
    
    // MARK: - itemArray Set
    func setData() {
        itemArray = [ItemEntity(itemImage: "itemImage", itemName: "itemName", itemPrice: "itemPrice")]
    }
    
    // MARK: - itemArray Get
    func getData(_ index: Int) -> ItemEntity {
        return itemArray[index]
    }
    
    func getCount() -> Int {
        return itemArray.count
    }
}
