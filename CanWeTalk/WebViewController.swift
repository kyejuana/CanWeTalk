//
//  WebViewController.swift
//  CanWeTalk
//
//  Created by Kye Juana Avery on 9/5/23.
//



import UIKit
import WebKit

class WebViewController: UIViewController {

    var url = URL(string:"")
    
    
    @IBOutlet weak var web: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage()
        // Do any additional setup after loading the view.
    }
    
    func loadWebPage() {
        if let myURL = url {
            
            let myRequest = URLRequest(url: myURL)
            web.load(myRequest)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
