//
//  Home.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(sectionData) { item in
                            GeometryReader { geometry in
                                SectionView(section: item)
                                    .rotation3DEffect(
                                        Angle(degrees: Double(geometry.frame(in: .global).minX - 30) / -20),
                                        axis: (x: 0.0, y: 10.0, z: 0.0))
                            }
                            .frame(width: 275, height: 275)
                        }
                    }
                    .padding(30)
                    .padding(.bottom, 30)
                }
                .offset(y: -30)
                
                HStack {
                    Text("Современные WEB - технологии идеально подходят для всех, кто хочет создать захватывающий сайт!")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(Color.black.opacity(0.6))
                }
                .padding()
                .offset(y: -60)
                
                SectionView(width: UIScreen.main.bounds.width - 60, height: 275, section: Section(title: "SMARTEXWEB", text: "СОЗДАЙТЕ САЙТ СВОЕЙ МЕЧТЫ СЕГОДНЯ.", image: Image("4"), color: Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))))
                    .offset(y: -60)
                
                Spacer()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct LogoView: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

        }
        .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)), lineWidth: 1)
        )
    }
}

struct SectionView: View {
    var width: CGFloat = 275
    var height: CGFloat = 275
    var section: Section
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 18, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(.white)
                Spacer()
                LogoView()
            }
            Text(section.text.uppercased())
                .font(.system(size: 12))
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 210)
        }
        .padding(.top, 20)
        .padding(.horizontal,20)
        .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
    }
}

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: Image
    var color: Color
}

let sectionData = [
    Section(title: "WEB - ПРИЛОЖЕНИЯ (САЙТЫ)", text: "Создание сайтов на CMS 'WordPress' и других технологиях.", image: Image("6"), color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))),
    Section(title: "МОБИЛЬНЫЕ ПРИЛОЖЕНИЯ", text: "Создание мобильных приложений на разных платформах", image: Image("3"), color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
    Section(title: "ДЕСКТОПНЫЕ ПРИЛОЖЕНИЯ", text: "Создание десктопных приложений на платформе 'Electron'.", image: Image("1"), color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))),
]
