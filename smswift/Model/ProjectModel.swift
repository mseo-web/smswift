//
//  ProjectModel.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/23/21.
//

//import Foundation
import SwiftUI

struct ProjectModel: Codable {
    var data: [Project]
}

struct Project: Codable {
    var id: Int
    var name: String
    var description: String
    var client: String
    var spec: String
    var period: String
    var siteurl: String
    var photo: [ProjectPhoto]
    var categories: [ProjectCategory]
    var tags: [ProjectTag]
}

struct ProjectPhoto: Codable {
    var id: Int
    var name: String
    var file_name: String
    var thumbnail: String
}

struct ProjectCategory: Codable {
    var id: Int
    var name: String
    var description: String
}

struct ProjectTag: Codable {
    var id: Int
    var name: String
}
