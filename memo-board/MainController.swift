//
//  ViewController.swift
//  memo-board
//
//  Created by yupouri on 2018/02/21.
//  Copyright © 2018年 Y_h. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    @IBAction func goBack(_ segue:UIStoryboardSegue) {}
    
    @IBAction func goFixedContentView(_ sender:UIButton) {
        let next = storyboard!.instantiateViewController(withIdentifier: "FixedContentView")
        self.present(next, animated: true, completion: nil)
    }
    
    @IBAction func goNewContentView(_ sender:UIButton) {
        let next = storyboard!.instantiateViewController(withIdentifier: "NewContentView")
        self.present(next, animated: true, completion: nil)
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

