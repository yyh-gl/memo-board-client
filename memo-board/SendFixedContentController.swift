//
//  SendFixedContent.swift
//  memo-board
//
//  Created by yupouri on 2018/02/22.
//  Copyright © 2018年 Y_h. All rights reserved.
//

import UIKit
import Alamofire

class SendFixedContentController: UIViewController {
    
    @IBOutlet weak var contentOneButton: UIButton!
    @IBOutlet weak var contentTwoButton: UIButton!
    @IBOutlet weak var contentThreeButton: UIButton!
    @IBOutlet weak var contentFourButton: UIButton!
    @IBOutlet weak var contentFiveButton: UIButton!
    
    func goMain() {
        let next = storyboard!.instantiateViewController(withIdentifier: "MainView")
        self.present(next, animated: true, completion: nil)
    }
    
    func getMemo(id: Int) {
        let url = "http://192.168.10.3:3000/memos/\(id)"
        Alamofire.request(url, method:.get)
    }
    
    func manageTextColor(id: Int) {
        contentOneButton.setTitleColor(UIColor.black, for: .normal)
        contentTwoButton.setTitleColor(UIColor.black, for: .normal)
        contentThreeButton.setTitleColor(UIColor.black, for: .normal)
        contentFourButton.setTitleColor(UIColor.black, for: .normal)
        contentFiveButton.setTitleColor(UIColor.black, for: .normal)
        switch id {
        case 1:
            contentOneButton.setTitleColor(UIColor.red, for: .normal)
        case 2:
            contentTwoButton.setTitleColor(UIColor.red, for: .normal)
        case 3:
            contentThreeButton.setTitleColor(UIColor.red, for: .normal)
        case 4:
            contentFourButton.setTitleColor(UIColor.red, for: .normal)
        case 5:
            contentFiveButton.setTitleColor(UIColor.red, for: .normal)
        default:
            print("Others")
        }
    }
    
    @IBAction func pushContentOneButton(_ sender: Any) {
        getMemo(id: 1)
        manageTextColor(id: 1)
        UserDefaults.standard.set(1, forKey: "pushedButton")
    }
    
    @IBAction func pushContentTwoButton(_ sender: Any) {
        getMemo(id: 2)
        manageTextColor(id: 2)
        UserDefaults.standard.set(2, forKey: "pushedButton")
    }
    
    @IBAction func pushContentThreeButton(_ sender: Any) {
        getMemo(id: 3)
        manageTextColor(id: 3)
        UserDefaults.standard.set(3, forKey: "pushedButton")
    }
    
    @IBAction func pushContentFourButton(_ sender: Any) {
        getMemo(id: 4)
        manageTextColor(id: 4)
        UserDefaults.standard.set(4, forKey: "pushedButton")
    }
    
    @IBAction func pushContentFiveButton(_ sender: Any) {
        getMemo(id: 5)
        manageTextColor(id: 5)
        UserDefaults.standard.set(5, forKey: "pushedButton")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manageTextColor(id: UserDefaults.standard.integer(forKey: "pushedButton"))
        contentOneButton.layer.borderColor = UIColor.black.cgColor
        contentOneButton.layer.borderWidth = 5.0
        contentTwoButton.layer.borderColor = UIColor.black.cgColor
        contentTwoButton.layer.borderWidth = 5.0
        contentThreeButton.layer.borderColor = UIColor.black.cgColor
        contentThreeButton.layer.borderWidth = 5.0
        contentFourButton.layer.borderColor = UIColor.black.cgColor
        contentFourButton.layer.borderWidth = 5.0
        contentFiveButton.layer.borderColor = UIColor.black.cgColor
        contentFiveButton.layer.borderWidth = 5.0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
