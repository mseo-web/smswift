//
//  ProjectCardView.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/21/21.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ProjectCardView: View {
    var project: Project
//    var animation: Namespace.ID
    init(project: Project) {
        self.project = project
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 0)
                
//                Text(project.categories[0].name)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.black)
//                    .padding(.vertical, 8)
//                    .padding(.horizontal, 10)
//                    .background(Color.orange.opacity(0.5))
//                    .cornerRadius(10)
            }
            
//            Image(project.photo[0].file_name)
//            Image("1")
            WebImage(url: URL(string: "https://laravel.smartexweb.kz" + project.photo[0].thumbnail)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .matchedGeometryEffect(id: "image\(project.id)", in: animation)
                .padding(.top, 30)
                .padding(.bottom)
                .padding(.horizontal, 10)
            
            HStack {
                Text(project.name)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .frame(minHeight: 60,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.bottom)
            .padding(.horizontal, 10)
                
            
//            Text(project.description)
//                .font(.caption)
//                .foregroundColor(.gray)
            
            // Using Matched Geometry Effect for Hero Animation
//            HStack {
//                Button(action: {}) {
//                    Image(systemName: "suit.heart")
//                        .font(.title2)
//                        .foregroundColor(.black)
//                }
//                .matchedGeometryEffect(id: "heart\(project.id)", in: animation)
//
//                Spacer(minLength: 0)
//
//                Text(project.period)
//                    .fontWeight(.heavy)
//                    .foregroundColor(.black)
//                    .matchedGeometryEffect(id: "rating\(project.id)", in: animation)
//            }
//            .padding()
        }
        // giving hero effect for color also
        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .matchedGeometryEffect(id: "color\(project.id)", in: animation))
        .cornerRadius(15)
    }
}

//struct ProjectCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProjectCardView()
//    }
//}
