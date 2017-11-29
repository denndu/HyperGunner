//
//  ViewController.swift
//  HyperGunner
//
//  Created by Dennis Du on 2017/11/29.
//  Copyright © 2017年 Dennis Du. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "index", ofType: "htm", inDirectory: "ld")
        let url = URL.init(fileURLWithPath: path!)
        do{
            let htmlString = try String.init(contentsOf: url)
            webView.loadHTMLString(htmlString, baseURL: url)
        }catch{
            //
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

