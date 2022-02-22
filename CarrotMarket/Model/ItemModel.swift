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
        itemArray = [
                    ItemEntity(cellIndex: 0, itemImage: "airplane.circle", itemName: "itemName01", itemPrice: "itemPrice01"),
                    ItemEntity(cellIndex: 0, itemImage: "wifi.square", itemName: "itemName02", itemPrice: "itemPrice02"),
                    ItemEntity(cellIndex: 0, itemImage: "point.3.connected.trianglepath.dotted", itemName: "itemName03", itemPrice: "itemPrice03"),
                    
                    ItemEntity(cellIndex: 0, itemImage: "rectangle", itemName: "itemName01", itemPrice: "itemPrice01"),
                    ItemEntity(cellIndex: 0, itemImage: "pause.circle", itemName: "itemName02", itemPrice: "itemPrice02"),
                    ItemEntity(cellIndex: 0, itemImage: "stop.circle", itemName: "itemName03", itemPrice: "itemPrice03"),
                    
                    ItemEntity(cellIndex: 0, itemImage: "backward", itemName: "itemName01", itemPrice: "itemPrice01"),
                    ItemEntity(cellIndex: 0, itemImage: "backward.end", itemName: "itemName02", itemPrice: "itemPrice02"),
                    ItemEntity(cellIndex: 0, itemImage: "play.slash", itemName: "itemName03", itemPrice: "itemPrice03")
                    ]
    }
    
    // MARK: - itemArray Get
    func getData(_ index: Int) -> ItemEntity {
        return itemArray[index]
    }
    
    func getCount() -> Int {
        return itemArray.count
    }
    
    public func updateIndex(_ index: Int) {
        self.itemArray[index].cellIndex = index
    }
    
    public func updateData(_ index: Int, _ itemName: String) {
        self.itemArray[index].itemName = itemName
    }
}
