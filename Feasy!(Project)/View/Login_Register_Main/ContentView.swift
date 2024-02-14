//
//  ContentView.swift
//  Feasy!(Project)
//
//  Created by Yiğitcan Dursun on 7.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var showLoginCustomer = false
    @State var showLoginWaiter = false
    @State var showRegister = false
    var customer = false
    var body: some View {
        NavigationView{
            ZStack{
                Color("mainMenuBackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("output-onlinepngtools")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width*0.5, height: UIScreen.main.bounds.height*0.4, alignment: .center)
                        .position(x: UIScreen.main.bounds.width*0.5 , y:140)
                    Spacer()
                    Button(action: {
                        self.showLoginCustomer.toggle()
                    })
                    {
                        Text("Customer").font(.system(size: 20))
                            .frame(width: UIScreen.main.bounds.width*0.7 ,
                                    height: UIScreen.main.bounds.height*0.025,
                                    alignment: .center)
                            .fullScreenCover(isPresented: $showLoginCustomer, content: {
                                LoginView(customer: true)
                            })
                    }
                    .padding()
                    .background(Color("mainMenuButtonColor"))
                    .tint(.white)
                    .cornerRadius(20)
                    .padding(8)
                    Spacer()
                    Button(action: {
                        self.showLoginWaiter.toggle()
                    })
                    {
                        Text("Waiter").font(.system(size: 20))
                            .frame(width: UIScreen.main.bounds.width*0.7 ,
                                    height: UIScreen.main.bounds.height*0.025,
                                    alignment: .center)
                            .fullScreenCover(isPresented: $showLoginWaiter, content: {
                                LoginView(customer: false)
                            })
                    }
                        .padding()
                        .background(Color("mainMenuButtonColor"))
                        .tint(.white)
                        .cornerRadius(20)
                        .padding(8)
                    Spacer()
                    VStack{
                        Label("Don't have an account?", systemImage: "heart")
                            .font(.system(size: 12))
                            .labelStyle(.titleOnly)
                        Button(action: {self.showRegister.toggle()}, label: {
                            Text("Sign Up").font(.system(size: 12)).bold()
                                .fullScreenCover(isPresented: $showRegister, content: {
                                    RegisterView()
                                })
                        })
                        .tint(.black)
                    }.position(x:UIScreen.main.bounds.width*0.5,
                               y:UIScreen.main.bounds.height*0.3)
                }
            }
        }
    }
}
        

#Preview {
    ContentView()
}
