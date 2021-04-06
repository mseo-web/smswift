//
//  TabButton.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/21/21.
//

import SwiftUI

struct TabButton: View {
    var title: String
    var action: Void
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View {
//        Button(action: {
//            withAnimation(.spring()) {
//                selected = title
//            }
//        }) {
//            Text(title)
//                .font(.system(size: 15))
//                .fontWeight(.bold)
//                .foregroundColor(selected == title ? .white : .black)
//                .padding(.vertical, 10)
//                .padding(.horizontal, selected == title ? 20 : 0)
//                .background(
//                    // For Slide Effect Animation
//                    ZStack {
//                        if selected == title {
//                            Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1))
//                                .clipShape(Capsule())
//                                .matchedGeometryEffect(id: "Tab", in: animation)
//                        }
//                    }
//                )
//        }
        Button {
            withAnimation(.spring()) {
                selected = title
            }
            action
        } label: {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical, 10)
                .padding(.horizontal, selected == title ? 20 : 0)
                .background(
                    // For Slide Effect Animation
                    ZStack {
                        if selected == title {
                            Color(#colorLiteral(red: 1, green: 0.2705882353, blue: 0, alpha: 1))
                                .clipShape(Capsule())
                                .matchedGeometryEffect(id: "Tab", in: animation)
                        }
                    }
                )
        }
    }
}

//struct TabButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TabButton()
//    }
//}
