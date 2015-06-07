//
//  SearchViewController.swift
//  AmenityFinder
//
//  Created by Joseph Leon on 6/6/15.
//  Copyright (c) 2015 Joseph Leon. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var distanceTextField: UITextField!
    @IBOutlet weak var categoryPickerView: UIPickerView!
    let categories = ["Bars", "Restaraunts", "Parks", "Movies", "Clothes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        categoryPickerView.delegate = self
        categoryPickerView.dataSource = self
        
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
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categories.count
    }
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return categories[row]
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
