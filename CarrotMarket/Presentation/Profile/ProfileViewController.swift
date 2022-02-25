//
//  ProfileViewController.swift
//  CarrotMarket
//
//  Created by test on 2022/02/25.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var profileTV: UITableView!
    
    var profileModel = ProfileModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    
    func setupTableView() {
        profileTV.delegate = self
        profileTV.dataSource = self
        profileTV.register(UINib(nibName: "ProfileTableCell",   bundle: nil), forCellReuseIdentifier: ProfileTableCell.identifier)
        profileTV.register(UINib(nibName: "MenuTableCell",      bundle: nil), forCellReuseIdentifier: MenuTableCell.identifier)
    }
    
    // Section Count
    func numberOfSections(in: UITableView) -> Int {
        // print("profileModel.getSectionCount() = \(profileModel.getSectionCount())")
        return profileModel.getSectionCount()
    }
    
    // Section 내 RowCount
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profileModel.getRowCount(section)
    }
    
    
    // 테이블 뷰에 cell등록
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // 첫번째 섹션 표현
        if indexPath.section == 0 {
            let cell = profileTV.dequeueReusableCell(withIdentifier: ProfileTableCell.identifier, for: indexPath) as! ProfileTableCell
            cell.leftImgView.image = UIImage(named: profileModel.profileArray[indexPath.section][indexPath.row].leftImgView)
            cell.topTitle.text = profileModel.profileArray[indexPath.section][indexPath.row].topTitle
            cell.bottomDescription.text = profileModel.profileArray[indexPath.section][indexPath.row].bottomDescription
            
            return cell
        // 나머지 섹션 표현
        } else {
            let cell = profileTV.dequeueReusableCell(withIdentifier: MenuTableCell.identifier, for: indexPath) as! MenuTableCell
            cell.leftImgView.image = UIImage(named: profileModel.profileArray[indexPath.section][indexPath.row].leftImgView)
            cell.topTitle.text = profileModel.profileArray[indexPath.section][indexPath.row].topTitle
            
            return cell
        }
    }
    
    
    // 셀 높이설정
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            // 첫번째는 자동으로 높이를 잡음
            return UITableView.automaticDimension
        }
        return 70
    }
    
    // 테이블뷰의 row가 클릭되었을 때
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
