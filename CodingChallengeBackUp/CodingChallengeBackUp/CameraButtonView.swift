//
//  CameraButtonView.swift
//  CodingChallengeBackUp
//
//  Created by Nguyen Truong Duy Khang on 3/29/21.
//

import SwiftUI

struct CameraButtonView: View {
    //Image Picker
    @ObservedObject var user = UserModel()
    
    @State var image: UIImage?
    @State var showActionSheet = false
    @State var showImagePicker = false
    @State var sourceType:UIImagePickerController.SourceType = .camera
    
    var body: some View {
        Button(action: {
            self.showActionSheet.toggle()
        }) {
            Image(systemName: "camera")
                .renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                .font(.system(size: 140 ))
        }
        .frame(width:300, height: 250)
        .clipShape(Circle())
        .shadow(radius: 5)
        .buttonStyle(PlainButtonStyle())
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Pick your Foody Pic"), message: nil, buttons: [
                .default(Text("Camera"), action: {
                    self.showImagePicker = true
                    self.sourceType = .camera
                }),
                .default(Text("Photo Library"), action: {
                    self.showImagePicker = true
                    self.sourceType = .photoLibrary
                }),
                .cancel()
            ])
        }.sheet(isPresented: $showImagePicker) {
            imagePicker(image: self.$image, showImagePicker: self.$showImagePicker, sourceType: self.sourceType)
        }
    }
    
}
struct CameraButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CameraButtonView()
    }
}
