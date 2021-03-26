//
//  FormView.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/22/21.
//

import SwiftUI
struct FormView: View {
    @State private var name = ""
    @State private var age = 0.0
    @State private var gender = ""
    @State private var zipCode = ""
    @StateObject var user = UserModel()
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Text("Full Name")
                    TextField("Your Name", text: $user.Name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("Age \(Int(age))")
                    Slider(value: $age, in: 0...100)
                    Text("Zip Code")
                    TextField("Zip Code", text: $user.ZipCode)
                        //.keyboardType(.decimalPad)
                    
                }
                NavigationLink(
                    destination: ProfileView(),
                    label: {
                        Text("Update")
                    })
            }
            
            .navigationBarTitle("Profile Survey")
            
        }
        
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
            
    }
}
