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
    
    func getMemo(id: Int) {
        let url = "http://192.168.10.4:3000/memos/\(id)"
        Alamofire.request(url, method:.get)
    }
    
    @IBAction func pushContentOneButton(_ sender: Any) {
        getMemo(id: 1)
    }
    
    @IBAction func pushContentTwoButton(_ sender: Any) {
        getMemo(id: 2)
    }
    
    @IBAction func pushContentThreeButton(_ sender: Any) {
        getMemo(id: 3)
    }
    
    @IBAction func pushContentFourButton(_ sender: Any) {
        getMemo(id: 4)
    }
    
    @IBAction func pushContentFiveButton(_ sender: Any) {
        getMemo(id: 5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
