//
//  UserModel.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/22/21.
//

import Foundation

class UserModel: ObservableObject {
    
    @Published var Name = ""
    @Published var Age = 0
    @Published var Gender = ""
    @Published var ZipCode = ""
    
    func saveInfo(userName: String, age:Int,Sex:String,PostCode: String) {
        Name = userName
        Age = age
        Gender = Sex
        ZipCode = PostCode
    }
}
