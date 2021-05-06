//
//  FormView.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/22/21.
//

import SwiftUI
import iPhoneNumberField
struct FormView: View {
    @ObservedObject var user = UserModel()
    @State var phoneEditing = false
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    CameraButtonView()
                        .offset(x:20)
                    Group{
                        Text("Restaurant/ Bistro")
                        TextField("Enter Name", text: $user.Name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Favorite Dish")
                        TextField("Dish's Name", text: $user.dishName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Phone Number")
                        iPhoneNumberField("Phone Number", text: $user.phoneNumber, isEditing: $phoneEditing, formatted: true)
                            .countryCodePlaceholderColor(Color.blue)
                            .flagHidden(false)
                            .maximumDigits(10)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Zip Code")
                        TextField("Zip Code", text: $user.ZipCode)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }
                }
                .background(Color.blue)
                NavigationLink(
                    destination: ProfileView(user: user),
                    label: {
                        Text("Create")
                            .foregroundColor(.black)
                    })
            }
            .navigationBarTitle("Foody Details")
            .ignoresSafeArea(edges: .top)
        }
        
        
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    
    }
}
