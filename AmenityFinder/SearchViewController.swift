//
//  SearchViewController.swift
//  AmenityFinder
//
//  Created by Joseph Leon on 6/6/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var categoryPickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func findItButton(sender: AnyObject) {
        
        let zip = zipTextField.text
        let distance = distanceTextField.text
        let category = categoryPickerView.delegate
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
