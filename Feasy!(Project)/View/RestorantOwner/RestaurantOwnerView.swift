//
//  RestaurantOwnerView.swift
//  Feasy!(Project)
//
//  Created by Yiğitcan Dursun on 7.02.2024.
//

import SwiftUI

struct RestaurantOwnerView: View {
    @State private var showMenu: Bool = false
    @State var showSidebar: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                Form{
                    Section(
                        header: Text("Restoranlarım")
                            .position(x:UIScreen.main.bounds.width/2-55,y:20)
                            .font(.system(size: 30)).bold()
                            .foregroundColor(Color("mainMenuButtonColor"))
                            .padding()
                    )
                    {
                            
                        
                    }.listRowBackground(Color.clear)
                    Section( header: Text("Big Chef")
                        .font(.system(size: 22)).bold()
                        .foregroundColor(Color.black)
                        .padding()){
                        VStack{
                            Spacer()
                            Image("Restoran")
                                .resizable()
                                .frame(width: 300, height: 210, alignment: .center)
                                .position(x:UIScreen.main.bounds.width/2-40,y:110)
                                .cornerRadius(30)
                                .onTapGesture {
                                    print("asdasda")
                                }
                        }.listRowBackground(Color.clear)
                    
                    }
                    Section( header: Text("Big Chef")
                        .font(.system(size: 22)).bold()
                        .foregroundColor(Color.black)
                        .padding()){
                        VStack{
                            Spacer()
                            Image("Restoran")
                                .resizable()
                                .frame(width: 300, height: 210, alignment: .center)
                                .position(x:UIScreen.main.bounds.width/2-40,y:110)
                                .cornerRadius(30)
                                .onTapGesture {
                                    print("asdasda")
                                }
                        }.listRowBackground(Color.clear)
                    
                    }
                    
                    Section( header: Text("Big Chef")
                        .font(.system(size: 22)).bold()
                        .foregroundColor(Color.black)
                        .padding()){
                        VStack{
                            Spacer()
                            Image("Restoran")
                                .resizable()
                                .frame(width: 300, height: 210, alignment: .center)
                                .position(x:UIScreen.main.bounds.width/2-40,y:110)
                                .cornerRadius(30)
                                .onTapGesture {
                                    print("asdasda")
                                }
                        }.listRowBackground(Color.clear)
                    
                    }
                }.background(Color.white).scrollContentBackground(.hidden)
                    }
                .navigationTitle("asdasd")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Image("Image")
                                .resizable()
                                .frame(width: 43, height: 43)
                        
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Button{
                            self.showMenu.toggle()
                            print(self.showMenu)
                            } label: {
                                Image("menu")
                                    .resizable()
                                    .frame(width: 42, height: 42)
                        }
                    }
                }
            }
        }
}
#Preview {
    RestaurantOwnerView()
}
