//
//  ProfileView.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/23/21.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var user = UserModel()
    var body: some View {
        Text(user.Name)
        Text(user.Gender)
        Text(user.ZipCode)
        Text("Hello world")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
