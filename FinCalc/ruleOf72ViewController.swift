//
//  ruleOf72ViewController.swift
//  FinCalc
//
//  Created by Evan Mullen on 10/23/21.
//

import Charts
import UIKit

class ruleOf72ViewController: UIViewController, ChartViewDelegate {

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barChart.delegate = self

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        
        barChart.center = view.center
        view.addSubview(barChart)
        
        let set = BarChartDataSet(entries: [
        
            BarChartDataEntry(x: 1,
                              y: 1),
            
            BarChartDataEntry(x: 2,
                              y: 2),
            
            BarChartDataEntry(x: 3,
                              y: 1),
            
            BarChartDataEntry(x: 4,
                              y: 1),
        
        ])
        
        let data = BarChartData(dataSet: set)
        
        set.colors = ChartColorTemplates.pastel()
        
        barChart.data = data
        
    }
    
}
