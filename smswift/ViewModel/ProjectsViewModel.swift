//
//  ProjectsViewModel.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/23/21.
//

//import Combine
import SwiftUI

//class ProjectsViewModel {
////    @Published var projects: [ProjectModel] = []
//    func getProjects(completion: @escaping([ProjectModel]) -> ()) {
//        guard let url = URL(string: "https://laravel.smartexweb.kz/api/projects") else { return }
//
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let projects = try! JSONDecoder().decode([ProjectModel].self, from: data!)
//            DispatchQueue.main.async {
//                completion(projects)
//            }
//        }
//        .resume()
//    }
//}

//class ProjectsViewModel: ObservableObject {
//    private let url = "https://laravel.smartexweb.kz/api/projects"
//    private var task: AnyCancellable?
//
//    @Published var projects: [Project] = []
//
//    func fetchProjects() {
//        task = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
//            .map { $0.data }
//            .decode(type: [Project].self, decoder: JSONDecoder())
//            .replaceError(with: [])
//            .eraseToAnyPublisher()
//            .receive(on: RunLoop.main)
//            .assign(to: \ProjectsViewModel.projects, on: self)
//    }
//}

class ProjectsViewModel: ObservableObject {
//    private let url = "https://laravel.smartexweb.kz/api/projects"

    @Published var projects: [Project] = []

    func loadData() {
        guard let url = URL(string: "https://laravel.smartexweb.kz/api/projects") else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let decodedResponse = try? JSONDecoder().decode(ProjectModel.self, from: data) {
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        self.projects = decodedResponse.data
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
