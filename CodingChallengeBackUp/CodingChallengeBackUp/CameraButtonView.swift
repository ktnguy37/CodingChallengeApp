//
//  CameraButtonView.swift
//  CodingChallengeBackUp
//
//  Created by Nguyen Truong Duy Khang on 3/29/21.
//

import SwiftUI

struct CameraButtonView: View {
    var body: some View {
        Button(action: {
                  print("button pressed")

                }) {
                    Image(systemName: "person.crop.circle.fill.badge.plus")
                        .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                        .font(.system(size: 160 ))
                        .foregroundColor(.blue)
                }
        .frame(width:300, height: 250)
        .clipShape(Circle())
        .shadow(radius: 5)
        .buttonStyle(PlainButtonStyle())
    }
}

struct CameraButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CameraButtonView()
    }
}
