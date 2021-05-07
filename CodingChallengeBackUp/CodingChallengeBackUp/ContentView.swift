//
//  ContentView.swift
//  CodingChallenge
//
//  Created by Khang Nguyen on 3/17/21.
//

import SwiftUI
import MapKit
struct ContentView: View {
    @State private var addFoody: Bool = false
    @ObservedObject var listUser = userList()
    var body: some View {
        //FormView()
        NavigationView {
            VStack {
                List {
                    ForEach(listUser.users) {user in
                        NavigationLink(destination:ProfileView(user: user)) {
                            listRow(user: user)
                        }
                    }
                }
            }
            .navigationTitle("Foody List")
            .navigationBarItems(trailing:
                Button(action: {
                    self.addFoody.toggle()
                }) {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                }.sheet(isPresented: $addFoody) {
                    FormView()
                })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

