//
//  userList.swift
//  CodingChallengeBackUp
//
//  Created by Nguyen Truong Duy Khang on 5/6/21.
//

import Foundation
import SwiftUI
class userList: ObservableObject {
    @Published var users : [UserModel]
    
    init() {
        self.users = [];
        let modPizza = UserModel(place: "Mod Pizza", favorite: "Mad Dog", phone: "4043727007", location: "85281", foodPic: UIImage(named: "MadDog")!)
        users.append(modPizza)
    }
}
