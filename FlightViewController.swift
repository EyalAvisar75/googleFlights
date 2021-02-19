//
//  FlightViewController.swift
//  MooglFlightUiKit
//
//  Created by eyal avisar on 09/02/2021.
//

import UIKit


class FlightViewController: UIViewController {
    
    
    @IBOutlet weak var tripCategory: UISegmentedControl!
    @IBOutlet weak var classCategory: UISegmentedControl!
    
    
    @IBAction func trip(_ sender:UISegmentedControl){
        guard let popover = storyboard?.instantiateViewController(withIdentifier: "Popover") else {return}
        popover.view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        popover.view.backgroundColor = .green
        popover.modalPresentationStyle = .popover
        if popover.popoverPresentationController != nil {
            tripCategory = sender
        }
        present(popover, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
