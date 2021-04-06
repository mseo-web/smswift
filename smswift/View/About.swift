//
//  About.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI

struct About: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Image("hero-img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: .none, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("НЕСКОЛЬКО СЛОВ О НАС")
                        .font(.system(size: 22, weight: .bold, design: .default))
                        .padding()
                    
                    VStack(alignment: .leading, spacing: 16) {

                        Text("МЫ ЗНАЕМ, ЧТО НАШИ КЛИЕНТЫ ЯВЛЯЮТСЯ КЛЮЧОМ К НАШЕМУ РОСТУ.")
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .italic()
                            .fixedSize(horizontal: false, vertical: true)
                        
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)))
                                .font(.system(size: 25, weight: .semibold, design: .default))
                            
                            Text("Создание сайтов")
                                .font(.title3)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)))
                                .font(.system(size: 25, weight: .semibold, design: .default))
                            
                            Text("Создание мобильных приложений")
                                .font(.title3)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        HStack {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1)))
                                .font(.system(size: 25, weight: .semibold, design: .default))
                            
                            Text("Создание десктопных приложений")
                                .font(.title3)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        Text("Поскольку мы потратили много времени на работу с различными клиентами, мы реализовали много интересных функций для наших приложений, которые предлагали наши клиенты.")
                            .font(.title3)
                            .fixedSize(horizontal: false, vertical: true)
                        
                    }
                }
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
                .padding()
            }
            .padding(.bottom, 30)
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
            
    }
}
