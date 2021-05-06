//
//  ProfileView.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/23/21.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var user: UserModel
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 450)
                .offset(y:-120)

            CircleImageView()
                .offset(y: -220)
                .padding(.bottom, -180)
            VStack(alignment:.leading,spacing:20) {
                HStack {
                    Image(systemName: "house.fill")
                    Text(user.Name)
                }
                HStack {
                    Image("food")
                        .renderingMode(.template)
                    Text("Favorite Dish: " + user.dishName)
                    
                }
                HStack {
                    Image(systemName: "phone.fill")
                    Text(user.phoneNumber)
                    
                }
                HStack {
                    Image(systemName: "location.circle.fill")
                    Text("Post code: " + user.ZipCode)
                }
               
            }
            .font(.system(size: 23))
            .foregroundColor(.white)
            Spacer()
        }
        .background(Color.blue)
        .ignoresSafeArea()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: UserModel())
    }
}
