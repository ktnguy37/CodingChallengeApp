//
//  ContentView.swift
//  CodingChallenge
//
//  Created by Khang Nguyen on 3/17/21.
//

import SwiftUI
import MapKit
struct ContentView: View {
    @ObservedObject var listUser = userList()
    var body: some View {
        NavigationView {
            List (listUser.users) {
                Text($0.Name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

