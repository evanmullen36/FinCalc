//
//  futureValueViewController.swift
//  FinCalc
//
//  Created by Evan Mullen on 10/23/21.
//

import Charts
import UIKit

class futureValueViewController: UIViewController, ChartViewDelegate {

    @IBOutlet var numberOfPeriods: UILabel!
    @IBOutlet var startingAmountLabel: UILabel!
    var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Future Value"
        lineChart.delegate = self
        
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x: 0, y: 150,
                                width: 400,
                                height: 200)
        
       // lineChart.center = view.center
        view.addSubview(lineChart)
        
        let set = LineChartDataSet(entries: [
        
            ChartDataEntry(x: Double(numberOfPeriods), y: Double(startingAmountLabel)),
            
            ChartDataEntry(x: 2,
                              y: 2),
            
            ChartDataEntry(x: 3,
                              y: 1),
            
            ChartDataEntry(x: 4,
                              y: 1),
        
        ])
        
        let data = LineChartData(dataSet: set)
        
        set.colors = ChartColorTemplates.pastel()
        
        lineChart.data = data
        
    }
    
    

}
