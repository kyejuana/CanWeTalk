//
//  FindHelpViewController.swift
//  CanWeTalk
//
//  Created by Kye Juana Avery on 9/5/23.
//

import UIKit

class FindHelpViewController: UIViewController {
    
    var urlSting: String = ""
    @IBOutlet weak var nimh: UIButton!
    
    @IBOutlet weak var mayo: UIButton!
    
    @IBOutlet weak var apa: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // a button cannot both trigger an action and start a segue.
    // it has to do one or the other.
    //
    // so, eliminate the action and use the sender variable of the segue
    // to determine which url to load.
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WebViewController {
            // must cast sender from Any? to UIButton
            if let sendButton = sender as? UIButton {
                // if cast successful run switch statement from action above to set urlString
                switch sendButton {
                case nimh:
                    urlSting = "https://www.nimh.nih.gov"
                case mayo:
                    urlSting = "https://www.mayoclinic.org/diseases-conditions/personality-disorders/diagnosis-treatment/drc-20354468"
                case apa:
                    urlSting = "https://www.psychiatry.org"
                default:
                    urlSting = "https://www.disney.com"
                }
                
                destination.url = URL(string: urlSting)
            }
        }
    }
}

   
