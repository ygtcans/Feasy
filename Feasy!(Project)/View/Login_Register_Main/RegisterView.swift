//
//  RegisterView.swift
//  Feasy!(Project)
//
//  Created by Yiğitcan Dursun on 7.02.2024.
//

import SwiftUI

struct RegisterView: View {
    @State var e_mail: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var password: String = ""
    @State var passwordVerif: String = ""
    @State var selection = ""
    @State var show = false
    let type = ["Customer", "Waiter"]

    var body: some View {
        NavigationView{
            ZStack{
                Color("mainMenuBackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("Image")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width*0.22,
                                height: UIScreen.main.bounds.height*0.13)
                        .position(x: UIScreen.main.bounds.width*0.5,
                                  y:UIScreen.main.bounds.height*0.07)
                    Label("Register", systemImage: "heart")
                        .font(.system(size: 44)).bold()
                        .foregroundColor(Color("mainMenuButtonColor"))
                        //Color("mainMenuButtonColor")
                        .labelStyle(.titleOnly)
                        .position(x: UIScreen.main.bounds.width*0.5,
                                  y:UIScreen.main.bounds.height*0.06)
                    Spacer()
                    TextField("First Name", text: $firstName)
                        .frame(width: UIScreen.main.bounds.width*0.7 ,
                                height: UIScreen.main.bounds.height*0.02,
                                alignment: .center)
                        .padding()
                        .textContentType(.givenName)
                        .background(Color("mainMenuButtonColor").opacity(0.2))
                        .cornerRadius(15)
                        .padding(8)
                    Spacer()
                    TextField("Last Name", text: $lastName)
                        .frame(width: UIScreen.main.bounds.width*0.7 ,
                            height: UIScreen.main.bounds.height*0.02,
                            alignment: .center)
                        .padding()
                        .textContentType(.familyName)
                        .background(Color("mainMenuButtonColor").opacity(0.2))
                        .cornerRadius(15)
                        .padding(8)
                    Spacer()
                    TextField("E-mail", text: $e_mail)
                        .frame(width: UIScreen.main.bounds.width*0.7 ,
                                height: UIScreen.main.bounds.height*0.02,
                                alignment: .center)
                        .padding()
                        .textContentType(.emailAddress)
                        .background(Color("mainMenuButtonColor").opacity(0.2))
                        .cornerRadius(15)
                        .padding(8)
                    Spacer()
                    SecureField("Password", text: $password)
                        .frame(width: UIScreen.main.bounds.width*0.7 ,
                                height: UIScreen.main.bounds.height*0.02,
                                alignment: .center)
                        .padding()
                        .background(Color("mainMenuButtonColor").opacity(0.2))
                        .cornerRadius(15)
                        .padding(8)
                    Spacer()
                    SecureField("Confirm Password", text: $passwordVerif)
                        .frame(width: UIScreen.main.bounds.width*0.7 ,
                                height: UIScreen.main.bounds.height*0.02,
                                alignment: .center)
                        .padding()
                        .background(Color("mainMenuButtonColor").opacity(0.2))
                        .cornerRadius(15)
                        .padding(8)
                    Spacer()
                    Picker("Select a type", selection: $selection) {
                        ForEach(type, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .frame(width: UIScreen.main.bounds.width*0.7 ,
                            height: UIScreen.main.bounds.height*0.055,
                            alignment: .center)
                    .background(Color("mainMenuButtonColor").opacity(0.2))
                    .cornerRadius(15)
                    .tint(.black)
                    .padding(8)
                    Spacer()
                    Button(action: {
                        //asdasd
                    })
                    {
                        Text("Submit").font(.system(size: 20))
                            .frame(width: UIScreen.main.bounds.width*0.7 ,
                                    height: UIScreen.main.bounds.height*0.025,
                                    alignment: .center)
                                
                    }
                    .padding()
                    .background(Color("mainMenuButtonColor"))
                    .tint(.white)
                    .cornerRadius(20)
                    .padding(8)
                    Spacer()
                    VStack{
                        Label("Already have an account?", systemImage: "heart")
                            .font(.system(size: 12))
                            .labelStyle(.titleOnly)
                        Button(action: {self.show.toggle()}, label: {
                            Text("Sign In").font(.system(size: 12)).bold()
                                .fullScreenCover(isPresented: $show, content: {
                                    ContentView()
                                })
                        }).tint(.black)
                        
                    }.position(x:UIScreen.main.bounds.width*0.5,
                               y:UIScreen.main.bounds.height*0.1)
                        
                    }
                }
            }
        }
    }


#Preview {
    RegisterView()
}

