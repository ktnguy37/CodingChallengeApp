//
//  CircleImageView.swift
//  CodingChallengeBackUp
//
//  Created by Nguyen Truong Duy Khang on 3/27/21.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image(systemName: "camera.fill")
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
