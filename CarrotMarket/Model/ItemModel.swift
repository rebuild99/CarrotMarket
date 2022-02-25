//
//  ItemModel.swift
//  CarrotMarket
//
//  Created by test on 2022/02/21.
//

import Foundation

class ItemModel {
    
    var itemArray = [ItemEntity]()
    
    init() {
        setItemData()
    }
    
    // MARK: - itemArray Set
    func setItemData() {
        itemArray = [
                    ItemEntity(cellIndex: 0, itemImage: "1",        itemName: "갤럭시S21 판매", itemPrice: "1000000"),
                    ItemEntity(cellIndex: 0, itemImage: "2",        itemName: "아이폰 13Pro 판매합니다", itemPrice: "1200000"),
                    ItemEntity(cellIndex: 0, itemImage: "3",        itemName: "아이맥 M1 판매합니다", itemPrice: "2000000"),
                    
                    ItemEntity(cellIndex: 0, itemImage: "4",        itemName: "아이패드 프로 5세대 버전 판매 ", itemPrice: "900000"),
                    ItemEntity(cellIndex: 0, itemImage: "5",        itemName: "트랙패드 판매", itemPrice: "100000"),
                    ItemEntity(cellIndex: 0, itemImage: "6",        itemName: "아이폰12 미니 블랙 판매합니다", itemPrice: "450000"),

                    ItemEntity(cellIndex: 0, itemImage: "7",        itemName: "갤럭시 탭S8 wifi 256GB", itemPrice: "1500000"),
                    ItemEntity(cellIndex: 0, itemImage: "8",        itemName: "애플펜슬 2세대", itemPrice: "120000"),
                    ItemEntity(cellIndex: 0, itemImage: "9",        itemName: "32인치 모니터", itemPrice: "300000"),
                    
                    ItemEntity(cellIndex: 0, itemImage: "10",        itemName: "아이패드 미니6", itemPrice: "600000"),
                    ItemEntity(cellIndex: 0, itemImage: "11",        itemName: "Macbook Pro 맥북프로 2019 고급형 i5 2.4GHz Ram16 ssd512 CTO (13인치)", itemPrice: "1180000"),
                    ItemEntity(cellIndex: 0, itemImage: "12",        itemName: "에어팟3 Air pods 매개봉 새제품 2022년 1월제조", itemPrice: "220000"),
                    ]
    }
    
    
    // MARK: - itemArray Get
    func getData(_ index: Int) -> ItemEntity {
        return itemArray[index]
    }
    
    // MARK: - itemArray Count Get
    func getCount() -> Int {
        return itemArray.count
    }
    
    public func updateData(_ index: Int, _ itemArray: ItemEntity) {
        self.itemArray[index].itemImage = itemArray.itemImage
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
