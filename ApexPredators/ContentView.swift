//
//  ContentView.swift
//  ApexPredators
//
//  Created by Adam Lea on 12/27/22.
//

import SwiftUI

struct ContentView: View {
    let apController = PredatorController()
    @State var updatedDinos: [ApexPredator] = []
    @State var sortAlphabetical = false
    @State var currentFilter = "All"
    @State var text = ""
    
    var body: some View {
        apController.filterBy(type: currentFilter)
        
        
        if sortAlphabetical {
            apController.sortByAlphabetical()
        } else {
            apController.sortByMovieAppearnace()
        }
        
        return NavigationView {
            List {
                if text == "" {
                    ForEach(apController.apexPredators) { predator in
                        NavigationLink(destination: PredatorDetail(predator: predator)) {
                            PredatorRow(predator: predator)
                        }
                    }
                } else {
                    ForEach(updatedDinos) { predator in
                        NavigationLink(destination: PredatorDetail(predator: predator)) {
                            PredatorRow(predator: predator)
                        }
                    }
                }
            }
            .navigationTitle("Apex Predators")
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always), prompt: "Dinosaur Search")
            .onChange(of: text) { searchValue in
                updatedDinos = apController.apexPredators.filter {$0.name.contains(searchValue)}
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        withAnimation {
                            sortAlphabetical.toggle()
                        }
                    } label: {
                        if sortAlphabetical {
                            Image(systemName: "film")
                            
                        } else {
                            Image(systemName: "textformat")
                        }
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Picker("Filter", selection: $currentFilter.animation()) {
                            ForEach(apController.typeFilters, id: \.self) { type in
                                HStack {
                                    Text(type)
                                    Spacer()
                                    Image(systemName: apController.typeIcon(for: type))
                                }
                            }
                            
                        }
                    } label: {
                        Image(systemName:"slider.horizontal.3")
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
