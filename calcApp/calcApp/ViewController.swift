//
//  ViewController.swift
//  calcApp
//
//  Created by James Wilhelm on 4/23/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calcItems: UILabel!
    @IBOutlet weak var results: UILabel!
    
    var workings: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    //functions
    
    func clearAll(){
        workings = ""
        calcItems.text = ""
        results.text = ""
    }
    
    func addToCalcItems(value: String){
        workings = workings + value
        calcItems.text = workings
    }
    
    func formatResult(result: Double) -> String {
        if result.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", result)
        }else{
            return String(format: "%.2f", result)
        }
    }
    
    
    //action buttons
    @IBAction func allClearTapped(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func delTapped(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            calcItems.text = workings
        }
    }
    @IBAction func equalTapped(_ sender: Any) {
        let checkPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
        let exp = NSExpression(format: checkPercent)
        let result = exp.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        results.text = resultString
    }
    
    //operators
    @IBAction func percentTapped(_ sender: Any) {
        addToCalcItems(value: "%")
    }
    @IBAction func divideTapped(_ sender: Any) {
        addToCalcItems(value: "/")
    }
    @IBAction func multiplyTapped(_ sender: Any) {
        addToCalcItems(value: "*")
    }
    @IBAction func subtractTapped(_ sender: Any) {
        addToCalcItems(value: "-")
    }
    @IBAction func addTapped(_ sender: Any) {
        addToCalcItems(value: "+")
    }
    
    
    //number and deci buttons
    
    @IBAction func zeroTapped(_ sender: Any) {
        addToCalcItems(value: "0")
    }
    @IBAction func deciTapped(_ sender: Any) {
        addToCalcItems(value: ".")
    }
    @IBAction func oneTapped(_ sender: Any) {
        addToCalcItems(value: "1")
    }
    @IBAction func twoTapped(_ sender: Any) {
        addToCalcItems(value: "2")
    }
    @IBAction func threeTapped(_ sender: Any) {
        addToCalcItems(value: "3")
    }
    @IBAction func fourTapped(_ sender: Any) {
        addToCalcItems(value: "4")
    }
    @IBAction func fiveTapped(_ sender: Any) {
        addToCalcItems(value: "5")
    }
    @IBAction func sixTapped(_ sender: Any) {
        addToCalcItems(value: "6")
    }
    @IBAction func sevenTapped(_ sender: Any) {
        addToCalcItems(value: "7")
    }
    @IBAction func eightTapped(_ sender: Any) {
        addToCalcItems(value: "8")
    }
    @IBAction func nineTapped(_ sender: Any) {
        addToCalcItems(value: "9")
    }
}

