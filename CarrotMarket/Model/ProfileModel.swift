//
//  ProfileModel.swift
//  CarrotMarket
//
//  Created by test on 2022/02/26.
//

import Foundation
import UIKit

class ProfileModel {
    
    var profileArray = [[ProfileEntity]]()
    let profileTableCell = ProfileTableCell()
    let menuTableCell = MenuTableCell()
    
    init() {
        setProfileData()
    }
    
    func setProfileData() {
        
        profileArray.append([
                                ProfileEntity(
                                    leftImgView: "ProfileImage",
                                    topTitle: "Jack",
                                    bottomDescription: "라이징 #23354772123"
                                )
                            ])
        
        profileArray.append([
                                ProfileEntity(leftImgView: "pin", topTitle: "내 동네 설정", bottomDescription: nil),
                                ProfileEntity(leftImgView: "target", topTitle: "동네 인증하기", bottomDescription: nil),
                                ProfileEntity(leftImgView: "tag", topTitle: "키워드 알림", bottomDescription: nil),
                                ProfileEntity(leftImgView: "filter", topTitle: "관심 카테고리 설정", bottomDescription: nil)
                            ])
        
        profileArray.append([
                                ProfileEntity(leftImgView: "tile", topTitle: "모아보기", bottomDescription: nil),
                                ProfileEntity(leftImgView: "book", topTitle: "당근가계부", bottomDescription: nil),
                                ProfileEntity(leftImgView: "coupon", topTitle: "받은 쿠폰함", bottomDescription: nil),
                                ProfileEntity(leftImgView: "store", topTitle: "내 단골 가게", bottomDescription: nil)
                            ])
        
        profileArray.append([
                                ProfileEntity(leftImgView: "tile", topTitle: "동네생활 글", bottomDescription: nil),
                                ProfileEntity(leftImgView: "book", topTitle: "동네생활 댓글", bottomDescription: nil),
                            ])
    }
    
    func getRowCount(_ secion: Int) -> Int {
        return profileArray[secion].count
    }

    func getSectionCount() -> Int {
        return profileArray.count
    }
    

    //MARK: - cell 내부 데이터 세팅
    func setCellData(_ section: Int, _ row: Int, _ profileCell: ProfileTableCell, _ menuCell: MenuTableCell) {
        if(section == 0) {
            
            // cell as! ProfileTableCell
            // print(profileArray[section][row].leftImgView)
            
            profileCell.leftImgView.image = UIImage(named: profileArray[section][row].leftImgView)
            profileCell.topTitle.text = profileArray[section][row].topTitle
            profileCell.bottomDescription.text = profileArray[section][row].bottomDescription
        } else {
            menuCell.leftImgView.image = UIImage(named: profileArray[section][row].leftImgView)
            menuCell.topTitle.text = profileArray[section][row].topTitle
        }
    }
}
