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
                    ItemEntity(cellIndex: 0, itemImage: "airplane.circle",  itemName: "갤럭시S21 판매", itemPrice: "1000000"),
                    ItemEntity(cellIndex: 0, itemImage: "wifi.square",      itemName: "아이폰 13Pro 판매합니다", itemPrice: "1200000"),
                    ItemEntity(cellIndex: 0, itemImage: "point.3.connected.trianglepath.dotted", itemName: "아이맥 M1 판매합니다", itemPrice: "2000000"),
                    
                    ItemEntity(cellIndex: 0, itemImage: "rectangle",    itemName: "아이패드 프로 5세대 버전 판매 ", itemPrice: "900000"),
                    ItemEntity(cellIndex: 0, itemImage: "pause.circle", itemName: "itemName02", itemPrice: "0"),
                    ItemEntity(cellIndex: 0, itemImage: "stop.circle",  itemName: "itemName03", itemPrice: "0"),

                    ItemEntity(cellIndex: 0, itemImage: "backward",     itemName: "itemName01", itemPrice: "0"),
                    ItemEntity(cellIndex: 0, itemImage: "backward.end", itemName: "itemName02", itemPrice: "0"),
                    ItemEntity(cellIndex: 0, itemImage: "play.slash",   itemName: "itemName03", itemPrice: "0")
                    ]
    }
    
    // MARK: - itemArray Get
    func getData(_ index: Int) -> ItemEntity {
        return itemArray[index]
    }
    
    func getCount() -> Int {
        return itemArray.count
    }
    
    public func updateData(_ index: Int, _ itemArray: ItemEntity) {
        self.itemArray[index].itemName = itemArray.itemName
        self.itemArray[index].itemPrice = itemArray.itemPrice
    }
    
    public func insertData(_ itemArray: ItemEntity) {
        self.itemArray.insert(itemArray, at: 0)
    }
    
    public func deleteData(_ index: Int) {
        self.itemArray.remove(at: index)
    }
}
