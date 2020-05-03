//
//  BarGraph.swift
//  BarGraph
//
//  Created by Ivan Ivanov on 02.05.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct BarGraph: View {
    
    let reports: [Report]
    
    var body: some View {
        VStack {
            
            HStack(alignment: .lastTextBaseline) {
                
                ForEach(self.reports, id: \.year) { report in
                    BarView(report: report)
                }

            }
            
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph(reports: Report.all())
    }
}


struct BarView: View {
    
    let report: Report
    
    var body: some View {
        
        let value = report.revenue / 500
        let yValue = Swift.min(value * 20, 500)
        
        return VStack {
            Text(String(format: "$%.2f", report.revenue))
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: CGFloat(yValue))
            
            Text(report.year)
        }
        
    }
    
    
}
