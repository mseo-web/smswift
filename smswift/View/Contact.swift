//
//  Contact.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI

struct Contact: View {
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                
                ContactCardView(title: "Наш адрес", text:"Республика Казахстан, г. Павлодар", icon: "mappin.and.ellipse")
                
                ContactCardView(title: "Наш Email", text:"mihas-ox7-74@mail.ru", icon: "envelope")
                
                ContactCardView(title: "Наш телефон", text:"+77088210530", icon: "iphone.homebutton")
                
                MapView()
                    .frame(height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Contact()
        }
    }
}

struct ContactCardView: View {
    var title: String
    var text: String
    var icon: String
    var body: some View {
        VStack {
            VStack(spacing: 16) {
                Image(systemName: icon)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)))
                    .font(.system(size: 25, weight: .semibold, design: .default))
            
                Text(title)
                    .font(.system(size: 25, weight: .bold, design: .default))
                
                Text(text)
                    .font(.title3)
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 150)
//            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]), startPoint: .top, endPoint: .bottom))
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
            .padding(.horizontal, 16)
//            .overlay(
//                Image(systemName: icon)
//                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)))
//                    .font(.system(size: 20))
//                    .offset(y: -75)
//            )
        }
        .padding(.bottom, 30)
    }
}
