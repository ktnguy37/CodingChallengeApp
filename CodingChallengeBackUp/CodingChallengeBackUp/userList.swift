//
//  userList.swift
//  CodingChallengeBackUp
//
//  Created by Nguyen Truong Duy Khang on 5/6/21.
//

import Foundation

class userList: ObservableObject {
    @Published var users : [UserModel]
    
    init() {
        users = [];
    }
}
