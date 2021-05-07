//
//  UserModel.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/22/21.
//

import Foundation
import SwiftUI
class UserModel: ObservableObject, Identifiable {
    @Published var id = UUID()
    @Published var Name : String
    @Published var dishName : String
    @Published var phoneNumber: String
    @Published var ZipCode: String
    var foodImage: UIImage
    init() {
        self.Name = ""
        self.dishName = ""
        self.ZipCode = ""
        self.phoneNumber = ""
        foodImage = UIImage(systemName: "camera")!
        id = UUID()
    }
    init(place: String, favorite dishName: String, phone: String, location: String,foodPic: UIImage) {
        self.Name = place
        self.dishName = dishName
        self.phoneNumber = phone
        self.ZipCode = location
        foodImage = foodPic
        id = UUID()
    }
}
