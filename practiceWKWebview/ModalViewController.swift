//
//  ModalViewController.swift
//  practiceWKWebview
//
//  Created by 石川太洋 on 2020/08/25.
//  Copyright © 2020 石川太洋. All rights reserved.
//

import UIKit
import WebKit //ここimport忘れずに

class ModalViewController: UIViewController, WKUIDelegate {
	
	var webView: WKWebView!
	
	override func loadView() {
		let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
		webView.uiDelegate = self
        view = webView
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let myURL = URL(string:"https://www.google.com/") {
			let myRequest = URLRequest(url: myURL)
			webView.load(myRequest)
		}
		
		//公式ドキュメント
//        let myURL = URL(string:"https://www.apple.com")
//        let myRequest = URLRequest(url: myURL!)
//        webView.load(myRequest)

    }
    
}
