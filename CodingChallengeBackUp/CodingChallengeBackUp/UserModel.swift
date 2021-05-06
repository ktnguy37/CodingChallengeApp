//
//  UserModel.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/22/21.
//

import Foundation
import UIKit.UIImage
class UserModel: ObservableObject {
    
    @Published var Name : String
    @Published var dishName : String
    @Published var phoneNumber: String
    @Published var ZipCode: String
    init() {
        self.Name = ""
        self.dishName = ""
        self.ZipCode = ""
        self.phoneNumber = ""
    }
}
