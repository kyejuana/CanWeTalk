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
    
    
    @IBAction func resourceButtonPressed(_ sender: UIButton) {
        switch sender {
        case nimh:
            urlSting = "https://www.nimh.nih.gov"
        case mayo:
            urlSting = "https://www.mayoclinic.org/diseases-conditions/personality-disorders/diagnosis-treatment/drc-20354468"
        case apa:
            urlSting = "https://www.psychiatry.org"
        default:
            urlSting = "https://www.disney.com"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WebViewController {
            destination.url = URL(string: urlSting)
        }
    }
}
