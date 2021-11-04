//
//  ViewController.swift
//  SAPCAI
//
//  Created by Praveer Sen on 04.11.2021.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var oChatView: UIView!
    private var oHtmlView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.oHtmlView = WKWebView(frame:self.oChatView.bounds)
        self.oChatView.addSubview(self.oHtmlView)
        let margins = oChatView.layoutMarginsGuide
        oHtmlView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        oHtmlView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        oHtmlView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        oHtmlView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
        oHtmlView.layer.cornerRadius = 20
        
        oHtmlView.showsLargeContentViewer = false
        oHtmlView.contentMode = .scaleAspectFit
        oHtmlView.translatesAutoresizingMaskIntoConstraints = false
        
        let url = Bundle.main.url(forResource: "chatbot", withExtension: "html", subdirectory: nil)
        oHtmlView.load(URLRequest(url: url!))
        oHtmlView.allowsBackForwardNavigationGestures = true
        let request = URLRequest(url: url!)
//        oHtmlView.configuration.preferences.javaScriptEnabled = true
        oHtmlView.load(request)
        
    }
    

}

