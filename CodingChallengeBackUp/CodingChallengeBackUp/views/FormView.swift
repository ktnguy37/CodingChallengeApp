//
//  FormView.swift
//  CodingChallengeBackUp
//
//  Created by Khang Nguyen on 3/22/21.
//

import SwiftUI
import iPhoneNumberField
struct FormView: View {
    @Environment(\.presentationMode) private var presentationMode
    @ObservedObject var users = userList()
    @State var phoneEditing = false
    
    @State var res_bistro_Name = ""
    @State var dishName = ""
    @State var phoneNumber = ""
    @State var zipCode = ""
    
    @State var image: UIImage?
    @State var showActionSheet = false
    @State var showImagePicker = false
    @State var sourceType:UIImagePickerController.SourceType = .camera
    
    init(){
        UITableView.appearance().backgroundColor = .clear
    }
    var body: some View {
        NavigationView {
            VStack{
                if (image != nil) {
                    Image(uiImage: image!)
                    .resizable()
                    .clipShape(Rectangle())
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .scaledToFill()
                    .padding(.top, 170.0)
                } else {
                    Image(systemName: "camera")
                        .resizable()
                        .clipShape(Rectangle())
                        .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .scaledToFill()
                        .padding(.top, 170.0)
                }

                
                Button(action: {
                    self.showActionSheet.toggle()
                }, label: {
                    Text("Edit")
                }).actionSheet(isPresented: $showActionSheet) {
                    ActionSheet(title: Text("Add your foody pic"), message: nil, buttons: [
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
                .offset(y:20)
                Form {
                    Group{
                        Text("Restaurant/ Bistro")
                        TextField("Enter Name", text: $res_bistro_Name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Favorite Dish")
                        TextField("Dish's Name", text: $dishName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Phone Number")
                        iPhoneNumberField("Phone Number", text: $phoneNumber, isEditing: $phoneEditing, formatted: true)
                            .countryCodePlaceholderColor(Color.blue)
                            .flagHidden(false)
                            .maximumDigits(10)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Text("Zip Code")
                        TextField("Zip Code", text: $zipCode)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                    }
                }
                
                Button(action: {
                    if image != nil
                    {
                        let newFoody = UserModel(place: res_bistro_Name, favorite: dishName, phone: phoneNumber, location: zipCode, foodPic: image!)
                        users.users.append(newFoody)
                        
                    }
                    else {
                        let newFoody = UserModel(place: res_bistro_Name, favorite: dishName, phone: phoneNumber, location: zipCode, foodPic: UIImage(systemName: "camera")!)
                        users.users.append(newFoody)
                    }
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack{
                        Spacer()
                        Text("Create")
                            .fontWeight(.semibold)
                        Spacer()
                    }
                })
                
                .background(Color.clear)
                .offset(y: 10)
                
            }
            .navigationBarTitle("Foody Details")
            .ignoresSafeArea(edges: .top)
            .navigationBarItems(trailing: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Cancel")
        }))
        }
        
        
        
    }
}


struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
        
    }
}
