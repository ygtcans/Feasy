//
//  LoginView.swift
//  Feasy!(Project)
//
//  Created by Yiğitcan Dursun on 7.02.2024.
//

import SwiftUI

struct LoginView: View {
    @State var e_mail: String = ""
    @State var password: String = ""
    @State var show = false
    var customer: Bool
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
                    Label("Login", systemImage: "heart")
                        .font(.system(size: 44)).bold()
                        .foregroundColor(Color("mainMenuButtonColor"))
                        .labelStyle(.titleOnly)
                        .position(x: UIScreen.main.bounds.width*0.5,
                                  y: UIScreen.main.bounds.height*0.02)
                    
                    VStack {
                        TextField("E-Mail", text: $e_mail)
                            .frame(width: UIScreen.main.bounds.width*0.7 ,
                                   height: UIScreen.main.bounds.height*0.02,
                                   alignment: .center)
                            .padding()
                            .textContentType(.emailAddress)
                            .background(Color("mainMenuButtonColor").opacity(0.2))
                            .cornerRadius(15)
                            .padding(4)
                        
                        SecureField("Password", text: $password)
                            .frame(width: UIScreen.main.bounds.width*0.7 ,
                                   height: UIScreen.main.bounds.height*0.02,
                                   alignment: .center)
                            .padding()
                            .background(Color("mainMenuButtonColor").opacity(0.2))
                            .cornerRadius(15)
                            .padding(8)
                        Button(action: {
                            //asdasd
                        })
                        {
                            Text("Sign In").font(.system(size: 20))
                                .frame(width: UIScreen.main.bounds.width*0.7 ,
                                       height: UIScreen.main.bounds.height*0.025,
                                       alignment: .center)
                            
                        }
                            .padding()
                            .background(Color("mainMenuButtonColor"))
                            .tint(.white)
                            .cornerRadius(20)
                    }.position(x: UIScreen.main.bounds.width*0.5,
                               y: UIScreen.main.bounds.height*0)
                    
                    Spacer()
                    
                    VStack {
                        Label("Don't have an account?", systemImage: "heart")
                            .font(.system(size: 12))
                            .labelStyle(.titleOnly)
                            .tint(.black)
                        
                        Button(action: {
                            self.show.toggle()
                        }, label: {
                            Text("Sign Up").font(.system(size: 12)).bold()
                                .fullScreenCover(isPresented: $show, content: {
                                    RegisterView()
                                })
                        })
                        .tint(.black)
                    }
                }
            }
        }
    }
}
#Preview {
    LoginView(customer: false)
}
