//
//  ContentView.swift
//  CodingChallenge
//
//  Created by Khang Nguyen on 3/17/21.
//

import SwiftUI
import MapKit
struct ContentView: View {
    var body: some View {
        VStack {
//            MapView()
//                .ignoresSafeArea(.keyboard, edges: .top)
//                .frame(height:300)
            FormView()
            
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

