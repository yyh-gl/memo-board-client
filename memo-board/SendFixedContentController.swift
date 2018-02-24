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
    
    func getMemo() {
        let url = "http://192.168.10.4:3000/memos/1"
        Alamofire.request(url, method:.get)
    }
    
    @IBAction func sendRequstButton(_ sender: Any) {
        getMemo()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
