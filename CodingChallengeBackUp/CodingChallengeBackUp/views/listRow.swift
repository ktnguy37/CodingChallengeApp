//
//  listRow.swift
//  CodingChallengeBackUp
//
//  Created by Nguyen Truong Duy Khang on 5/6/21.
//

import SwiftUI

struct listRow: View {
    @ObservedObject var user: UserModel
    var body: some View {
        HStack(spacing: 110) {
            Image(uiImage: UIImage(named: "MadDog")!)
                .resizable()
                .frame(width: 90, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(Rectangle())
                .clipped()
                .scaledToFill()
            VStack(alignment: .leading,spacing: 7) {
                HStack {
                    Image(systemName: "house")
                    Text(user.Name)
                }
                Text("Dish: \(user.dishName)")
                HStack {
                    Image(systemName: "phone.circle")
                    Text("\(user.phoneNumber)")
                }
            }
            
            
            
                
        }
    }
}

struct listRow_Previews: PreviewProvider {
    static var previews: some View {
//        listRow(user: .constant(UserModel(place: "Mod Pizza", favorite: "Mad Dog", phone: "4043727007", location: "85281", foodPic: UIImage(named: "MadDog")!)))
        listRow(user: UserModel())
    }
}
