//
//  Technologies.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI

struct Technologies: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Осваиваем технологии")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .padding()
                
                TechnologiesCardView(image: "vuejs1", title: "Vue.js")
                TechnologiesCardView(image: "laravel1", title: "Laravel")
                TechnologiesCardView(image: "Google-flutter-logo", title: "Flutter")
                TechnologiesCardView(image: "swift1", title: "Swift")
                TechnologiesCardView(image: "kotlin1", title: "Kotlin")
                TechnologiesCardView(image: "django1", title: "Django")
            }
        }
    }
}

struct Technologies_Previews: PreviewProvider {
    static var previews: some View {
        Technologies()
    }
}

struct TechnologiesCardView: View {
    var image: String
    var title: String
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: .none, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text(title)
                .font(.system(size: 22, weight: .bold, design: .default))
                .padding()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
        .padding()
    }
}
