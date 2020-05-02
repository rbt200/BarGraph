//
//  BarGraph.swift
//  BarGraph
//
//  Created by Ivan Ivanov on 02.05.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct BarGraph: View {
    var body: some View {
        VStack {
            
            HStack(alignment: .lastTextBaseline) {
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 180)
                    .padding()
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 280)
                    .padding()
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100, height: 380)
                .padding()
                
                Spacer()
            }
            
        }
    }
}

struct BarGraph_Previews: PreviewProvider {
    static var previews: some View {
        BarGraph()
    }
}
