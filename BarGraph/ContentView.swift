//
//  ContentView.swift
//  BarGraph
//
//  Created by Ivan Ivanov on 02.05.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
