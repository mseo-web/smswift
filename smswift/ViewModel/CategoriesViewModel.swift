//
//  CategoriesViewModel.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 4/4/21.
//

import SwiftUI

class CategoriesViewModel: ObservableObject {
//    private let url = "https://laravel.smartexweb.kz/api/categories"

    @Published var categories: [Category] = [
        Category(id: 99, name: "ВСЕ", description: "all")
    ]

    func loadData() {
        guard let url = URL(string: "https://laravel.smartexweb.kz/api/categories") else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(CategoryModel.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        var serverCategoriesData: [Category]
                        serverCategoriesData = decodedResponse.data
                        var serv_categories = [Category(id: 99, name: "ВСЕ", description: "all")]
                        for i in 0..<serverCategoriesData.count {
                            let categoryItem = Category(id: serverCategoriesData[i].id, name: serverCategoriesData[i].name, description: serverCategoriesData[i].description)
                            serv_categories.append(categoryItem)
                        }
                        self.categories = serv_categories
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
