//
//  StartView.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI

struct StartView : View {
    
    @State var index = 0
    @State var show = false
    
    var body: some View{
        
        ZStack{
            
            // Menu...
            
            HStack{
                
                VStack(alignment: .leading, spacing: 12) {
                    
                    Image("SM-logo2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 109, height: 48)
                    
                    Text("компания")
                        .font(.title3)
//                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    
                    Text("SMARTEXWEB")
                        .fontWeight(.heavy)
                        .font(.title2)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        
                        self.index = 0
                        
                        // animating Views...
                        
                        // Each Time Tab Is Clicked Menu Will be Closed...
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "house")
                                .foregroundColor(self.index == 0 ? Color("Color") : Color.white)

                            
                            Text("Главная")
                            .foregroundColor(self.index == 0 ? Color("Color") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 0 ? Color.white : Color.clear)
                        .cornerRadius(10)
                    }
                    .padding(.top,25)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "laptopcomputer.and.iphone")
                                .foregroundColor(self.index == 1 ? Color("Color") : Color.white)

                            
                            Text("Проекты")
                            .foregroundColor(self.index == 1 ? Color("Color") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 1 ? Color.white : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 2
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "gearshape.2")
                                .foregroundColor(self.index == 2 ? Color("Color") : Color.white)

                            
                            Text("Технологии")
                            .foregroundColor(self.index == 2 ? Color("Color") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 2 ? Color.white : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 3
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "person.2")
                                .foregroundColor(self.index == 3 ? Color("Color") : Color.white)

                            
                            Text("О нас")
                            .foregroundColor(self.index == 3 ? Color("Color") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 3 ? Color.white : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Button(action: {
                        
                        self.index = 4
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "building.2")
                                .foregroundColor(self.index == 4 ? Color("Color") : Color.white)

                            
                            Text("Контакты")
                            .foregroundColor(self.index == 4 ? Color("Color") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 4 ? Color.white : Color.clear)
                        .cornerRadius(10)
                    }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical,30)
                    
//                    Button(action: {
//
//
//                    }) {
//
//                        HStack(spacing: 25){
//
//                            Image(systemName: "rectangle.righthalf.inset.fill.arrow.right")
//                                .foregroundColor(Color.white)
//
//
//                            Text("Авторизация")
//                            .foregroundColor(Color.white)
//                        }
//                        .padding(.vertical, 10)
//                        .padding(.horizontal)
//                    }
                    
                    Button(action: {
                        
                        self.index = 5
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        HStack(spacing: 25){
                            
                            Image(systemName: "rectangle.righthalf.inset.fill.arrow.right")
                                .foregroundColor(self.index == 5 ? Color("Color") : Color.white)

                            
                            Text("Авторизация")
                            .foregroundColor(self.index == 5 ? Color("Color") : Color.white)
                        }
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(self.index == 5 ? Color.white : Color.clear)
                        .cornerRadius(10)
                    }
                    
//                    Spacer(minLength: 0)
                }
                .padding(.top,25)
                .padding(.horizontal,20)
                
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            // MainView...
            
            VStack(spacing: 0){
                
                HStack(spacing: 15){
                    
                    Button(action: {
                        
                        withAnimation{
                            
                            self.show.toggle()
                        }
                        
                    }) {
                        
                        // close Button...
                        
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                            .foregroundColor(Color.black.opacity(0.4))
                    }
                    
                    // Changing Name Based On Index...
                    
                    Text(self.index == 0 ? "Главная" : (self.index == 1 ? "Проекты" : (self.index == 2 ? "Технологии" : (self.index == 3 ? "О нас" : (self.index == 4 ? "Контакты" : "Авторизация")))))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Spacer(minLength: 0)
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader{_ in
                    
                    VStack{
                        
                        // Changing Views Based On Index...
                        
                        if self.index == 0{
                            
                            Home()
                        }
                        else if self.index == 1{
                            
                            Projects()
                        }
                        else if self.index == 2{
                            
                            Technologies()
                        }
                        else if self.index == 3{
                            
                            About()
                        }
                        else if self.index == 4{
                            
                            Contact()
                        }
                        else {
                            
                            LoginPage()
                        }
                    }
                }
            }
//            .background(Color.white)
            .background(Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)))
            //Applying Corner Radius...
            .cornerRadius(self.show ? 30 : 0)
            // Shrinking And Moving View Right Side When Menu Button Is Clicked...
            .scaleEffect(self.show ? 0.9 : 1)
            .offset(x: self.show ? UIScreen.main.bounds.width / 2 : 0, y: self.show ? 15 : 0)
            // Rotating Slighlty...
            .rotationEffect(.init(degrees: self.show ? -5 : 0))
            
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
            
    }
}
