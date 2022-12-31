//
//  PredatorLargeImage.swift
//  ApexPredators
//
//  Created by Adam Lea on 12/30/22.
//

import SwiftUI

struct PredatorLargeImage: View {
    let predator: ApexPredator
    
    var body: some View {

            Image(predator.name.lowercased().filter { $0 != " " })
                .resizable()
                .scaledToFit()
                .shadow(color: .white, radius: 6, x:0, y:0)
                .offset(y: -210)
                .rotation3DEffect(.degrees(180), axis: (x:0, y:1, z:0))
            .padding(.top, 90)
        
    }
}

struct PredatorLargeImage_Previews: PreviewProvider {
    static var previews: some View {
        let movieScene1 = movieScene(id: 3, movie: "Jurassic Park III", sceneDescription: "A young adult Tyrannosaurus appears in Jurassic Park 3. According to the official size charts, it is 37 feet long and 14.5 feet tall. When Alan Grant and the other survivors escape the Spinosaurus, they encounter the creature who is just feeding on another dinosaur. The group runs back towards the Spinosaurus and a huge battle occurs between the Tyrannosaurus and the Spinosaurus. The Spinosaurus kills the T-Rex by snapping its neck in its powerful jaws.")
        let movieScene2 = movieScene(id: 2, movie: "The Lost World: Jurassic Park", sceneDescription: "Like in the novel, there is a male and female Tyrannosaurus along with an infant in The Lost World. The male Tyrannosaurus is 18 feet tall and 40 feet long, the female is 19.5 feet tall and 43 feet long and the infant is 3 feet tall and 6 feet long. Roland tries to lure the male T-Rex out by trapping its infant. Sarah and Nick come across the injured infant and take it back to the trailer. Upon hearing its screams for help, both Tyrannosaurus turn up at the trailer. The group gives the infant back to its parents and both Tyrannosaurus try to push the trailer off the cliff. They disappear and Eddie saves Ian, Nick and Sarah but the two Tyrannosaurus return and kill Eddie.\n\nLater, the male Tyrannosaurus tracks Sarah to Roland’s camp due to the infant’s blood on her jacket. Everybody runs for their lives and a few manage to hide behind a waterfall. Several members of Roland’s team are trampled to death. Roland manages to tranquilize the creature and it’s transported to San Diego via the ship S.S. Venture. Somehow, the T-Rex breaks free and kills the entire crew. When the ship crashes into the dock in San Diego, Ludlow order the cargo hold be opened which free the creature. The Tyrannosaurus rampages through the city looking for food and water, finding a swimming pool and a dog in the process. It causes lots of damage in the city and kills a number of people.\n\nDr. Ian Malcolm and Sarah Harding steal the infant from a facility, which had been brought to San Diego separately. They use the infant to lure the Tyrannosaurus back to the ship and trap it in the cargo hold, just before tranquilizing it. The the creature is then transported back to Isla Sorna under heavy guard. It is shown together with the female Tyrannosaur and the infant.")
        let predator = ApexPredator(id: 3, name: "Stegosaurus", type: "land", movies: ["Jurassic Park","The Lost World: Jurassic Park","Jurassic Park III","Jurassic World","Jurassic World: Fallen Kingdom"], movieScenes: [movieScene1, movieScene2], link: "https://jurassicpark.fandom.com/wiki/Tyrannosaurus_rex")
        PredatorLargeImage(predator: predator)
            .preferredColorScheme(.dark)
    }
}
