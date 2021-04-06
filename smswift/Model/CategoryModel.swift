//
//  CategoryModel.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 4/4/21.
//

import SwiftUI

struct CategoryModel: Codable, Equatable {
    var data: [Category]
}

struct Category: Codable, Equatable {
    var id: Int
    var name: String
    var description: String
}

//var local_categories = [
//    Category(id: 99, name: "ВСЕ", description: "all"),
//    Category(id: 1, name: "LARAVEL", description: "laravel"),
//    Category(id: 2, name: "APACHE CORDOVA", description: "apache-cordova"),
//    Category(id: 3, name: "ELECTRON", description: "electron"),
//    Category(id: 4, name: "KOHANA(PHP)", description: "kohanaphp"),
//    Category(id: 5, name: "OCTOBER(CMS)", description: "october"),
//    Category(id: 6, name: "MOBILE APPS", description: "mobile-apps"),
//    Category(id: 7, name: "WORDPRESS", description: "wordpress"),
//    Category(id: 8, name: "VUE", description: "vue")
//]
