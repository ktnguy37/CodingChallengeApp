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
            
            Image(uiImage: user.foodImage)
                .resizable()
                .clipShape(Rectangle())
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .scaledToFill()
                .offset(y: -190)
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
            .foregroundColor(.black)
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: UserModel())
    }
}
