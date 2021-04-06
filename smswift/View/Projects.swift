//
//  Projects.swift
//  smswift
//
//  Created by  Sergey Mikhailov on 3/19/21.
//

import SwiftUI

struct Projects: View {
    @ObservedObject var projectsViewModel = ProjectsViewModel()
//    @ObservedObject var categoriesViewModel = CategoriesViewModel()
//    @State var current_categories: [Category] = categoriesViewModel.categories
//    @State var selected = current_categories[0]
    @State var selected = local_categories[0].name
    @Namespace var animation
    @State var currentProjects: [Project] = []
    
    //    @State var show = false
    //    @State var selectedProject: Project = projects[0]
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ScrollView {
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(local_categories, id: \.id) { cat in
                                        // Tab Button
                                        TabButton(
                                            title: cat.name,
                                            action: {
                                                sortByCategory(selected_category: cat.description)
                                            }(),
                                            selected: $selected,
                                            animation: animation
                                        )
                                            .padding(.horizontal, 5)
                                        
                                        if local_categories.last != cat {
                                            Spacer(minLength: 0)
                                        }
                                    }
                                }
                            }
                            .padding()
                            .padding(.top, 5)
                            
                            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 25) {
                                ForEach(projectsViewModel.projects, id: \.id) { project in
                                    // Card View
                                    //                                ProjectCardView(project: project, animation: animation)
                                    //                                    ProjectCardView(project: project)
                                    NavigationLink(
                                        destination: ProjectDetail(animation: animation, project: project),
                                        label: {
                                            ProjectCardView(project: project)
                                        }
                                    )
                                }
                            }
                            .padding()
                        }
                    }
                    
                    Spacer(minLength: 0)
                }
                //            .opacity(show ? 0 : 1)
                
                //            if show {
                //                ProjectDetail(selectedProject: $selectedProject, show: $show, animation: animation)
                //            }
            }
            .background(Color(#colorLiteral(red: 0.937254902, green: 0.937254902, blue: 0.937254902, alpha: 1)).ignoresSafeArea())
            //        .onAppear(perform: loadData)
            .onAppear {
                self.projectsViewModel.loadData()
                //            self.projects = self.projectsViewModel.projects
            }
//            .navigationBarTitle("Наши проекты")
            .navigationBarHidden(true)
        }
    }
    
    func sortByCategory(selected_category: String) {
        var sorting_projects: [Project] = []
        let projectsData: [Project] = projectsViewModel.projects
        for i in 0..<projectsData.count {
            
            for n in 0..<projectsData[i].categories.count {
                if (projectsData[i].categories[n].description == selected_category) {
                    sorting_projects.append(projectsData[i])
                }
            }
        }
        self.currentProjects = sorting_projects
    }
}

var local_categories = [
    Category(id: 99, name: "ВСЕ", description: "all"),
    Category(id: 1, name: "LARAVEL", description: "laravel"),
    Category(id: 2, name: "APACHE CORDOVA", description: "apache-cordova"),
    Category(id: 3, name: "ELECTRON", description: "electron"),
    Category(id: 4, name: "KOHANA(PHP)", description: "kohanaphp"),
    Category(id: 5, name: "OCTOBER(CMS)", description: "october"),
    Category(id: 6, name: "MOBILE APPS", description: "mobile-apps"),
    Category(id: 7, name: "WORDPRESS", description: "wordpress"),
    Category(id: 8, name: "VUE", description: "vue")
]

struct Projects_Previews: PreviewProvider {
    static var previews: some View {
        Projects()
    }
}
