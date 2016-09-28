//
//  ViewController.swift
//  MiraclePill
//
//  Created by Colby Timm on 2016-09-27.
//  Copyright © 2016 Colby Timm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var provincePicker: UIPickerView!
    @IBOutlet weak var provincePickerBtn: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryType: UITextField!
    @IBOutlet weak var postalCodeLabel: UILabel!
    @IBOutlet weak var postalCodeType: UITextField!
    
    let provinces = ["Alberta","British Columbia","Manitoba","New Brunswick","Newfoundland and Labrador","Northwest Territories","Nova Scotia","Nunavut","Ontario","Prince Edward Island","Quebec","Saskatchewan","Yukon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        provincePicker.dataSource = self
        provincePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceBtnPressed(_ sender: AnyObject) {
        provincePicker.isHidden = false
        countryLabel.isHidden = true
        countryType.isHidden = true
        postalCodeLabel.isHidden = true
        postalCodeType.isHidden = true
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        provincePickerBtn.setTitle(provinces[row], for: UIControlState.normal)
        provincePicker.isHidden = true
        countryLabel.isHidden = false
        countryType.isHidden = false
        postalCodeLabel.isHidden = false
        postalCodeType.isHidden = false
        
    }
}

