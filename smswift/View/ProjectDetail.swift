//
//  ProjectDetail.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/21/21.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ProjectDetail: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
//    @Binding var selectedProject: Project
//    @Binding var show: Bool
//
    var animation: Namespace.ID
//
    @State var loadContent = false
//    @State var selectedColor: Color = Color("p1")
    let project: Project
    
    var body: some View {
        
        // optimisation for smaller size iPhone
        ScrollView {
            VStack {
                HStack(spacing: 25) {
                    Button(action: {
                        withAnimation(.spring()) {
//                            show.toggle()
                            self.mode.wrappedValue.dismiss()
                        }
                    }) {
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.black)
                    }
                    
                    Spacer()

//                    Button(action: {}) {
//                        Image(systemName: "magnifyingglass")
//                            .font(.title)
//                            .foregroundColor(.black)
//                    }
//
//                    Button(action: {}) {
//                        Image(systemName: "bag")
//                            .font(.title)
//                            .foregroundColor(.black)
//                    }
                }
                .padding()
                
                VStack(spacing: 10) {
//                    Image(selectedProject.photo[0].file_name)
//                    Image("1")
                    WebImage(url: URL(string: "https://laravel.smartexweb.kz/storage/" + String(project.photo[0].id) + "/" + project.photo[0].file_name)!)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: .none, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        // since id is common
//                        .matchedGeometryEffect(id: "image\(project.id)", in: animation)
                        .cornerRadius(15)
                        .padding()
                        
                    Text(project.name)
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("Color1"))
                        .padding()
                    
                    HStack {
//                        Text(selectedProject.rating)
//                            .fontWeight(.heavy)
//                            .foregroundColor(.black)
//                            .matchedGeometryEffect(id: "rating\(selectedProject.id)", in: animation)
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "suit.heart")
                                .font(.title2)
                                .foregroundColor(.red)
                        }
                        .matchedGeometryEffect(id: "heart\(project.id)", in: animation)
                    }
                    .padding()
                }
                .padding(.top, 5)
//                .background(Color(selectedProject.image)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                                .clipShape(CustomShape())
                                .matchedGeometryEffect(id: "color\(project.id)", in: animation))
                .cornerRadius(15)
                .padding()
                
                VStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Заказчик: ")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Text(project.client)
                            .foregroundColor(.gray)
                            .padding(.top, 4)
                    }
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(15)
                
                VStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Должность: ")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Text(project.spec)
                            .foregroundColor(.gray)
                            .padding(.top, 4)
                    }
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(15)
                
                VStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Сайт проекта: ")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Text(project.siteurl)
                            .foregroundColor(.gray)
                            .padding(.top, 4)
                    }
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(15)
                
                // delay loading the content for smooth animation
                VStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Описание: ")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Text(project.description)
                            .foregroundColor(.gray)
                            .padding(.top, 4)
                        
//                        HStack {
//                            Text("Frame + Lens for $35")
//                                .foregroundColor(.gray)
//
//                            Text("50% off!")
//                                .foregroundColor(.red)
//                        }
                    }
                    .padding()
                    .frame(width: UIScreen.main.bounds.width - 30, alignment: .leading)
//                    .background(Color("p3"))
                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                    .cornerRadius(15)
                    
//                    VStack(alignment: .leading, spacing: 10) {
//                        Text("Color")
//                            .fontWeight(.heavy)
//                            .foregroundColor(.black)
//
//                        HStack(spacing: 15) {
//                            ForEach(1...4, id: \.self) { i in
//                                ZStack {
//                                    Color("p\(i)")
//                                        .clipShape(Circle())
//                                        .frame(width: 45, height: 45)
//                                        .onTapGesture {
//                                            withAnimation {
//                                                selectedColor = Color("p\(i)")
//                                            }
//                                        }
//
//                                    // checkmark for selected one
//                                    if selectedColor == Color("p\(i)") {
//                                        Image(systemName: "checkmark")
//                                            .foregroundColor(.black)
//                                    }
//                                }
//                            }
//
//                            Spacer(minLength: 0)
//                        }
//                    }
//                    .padding()
                    
                    Spacer(minLength: 15)
                    
                    Button(action: {
                        withAnimation(.spring()) {
//                            show.toggle()
                            self.mode.wrappedValue.dismiss()
                        }
                    }) {
                        Text("ПРОЕКТЫ")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                    
//                    Button(action: {}) {
//                        Text("ADD TO CART")
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
//                            .padding(.vertical)
//                            .frame(width: UIScreen.main.bounds.width - 100)
//                            .background(Color.black)
//                            .cornerRadius(15)
//                    }
//                    .padding(.vertical)
                }
                .padding([.horizontal, .bottom])
//                .frame(height: loadContent ? nil : 0)
//                .opacity(loadContent ? 1 : 0)
                // for smooth transition
                
                Spacer(minLength: 0)
            }
        }
        .background(Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)).ignoresSafeArea())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .onAppear {
            withAnimation(Animation.spring().delay(0.45)) {
                loadContent.toggle()
            }
        }
    }
}

//struct ProjectDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        ProjectDetail()
//    }
//}
