//
//  ContentView.swift
//  DogsSwiftUI
//
//  Created by Kevin Chan on 2/14/20.
//  Copyright © 2020 cornellappdev. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {

    init() {
        UITableView.appearance().separatorStyle = .none
    }

    let dogs = [
        Dog(imageName: "dog1", name: "Alice", breed: .beagle, category: .ugly),
        Dog(imageName: "dog2", name: "Bob", breed: .bull, category: .ugly),
        Dog(imageName: "dog3", name: "Lucky", breed: .corgi, category: .cute),
        Dog(imageName: "dog4", name: "Karen", breed: .golden, category: .meh),
        Dog(imageName: "dog5", name: "Alex", breed: .pug, category: .cute),
        Dog(imageName: "dog6", name: "Tom", breed: .shepherd, category: .meh),
        Dog(imageName: "dog7", name: "Luke", breed: .shiba, category: .meh),
        Dog(imageName: "dog8", name: "Brian", breed: .beagle, category: .cute),
        Dog(imageName: "dog9", name: "Jordan", breed: .beagle, category: .best),
    ]

    let stories = Array(repeating: Story(userName: "Jordan", imageName: "dog9"), count: 10)

    var body: some View {
        NavigationView {
            List {
                Spacer()

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(stories) { story in
                            StoryView(story: story)
                        }
                    }
                    .padding(.leading, 12)
                    .padding(.trailing, 12)
                }.listRowInsets(EdgeInsets())

                Spacer()

                ForEach(dogs, id: \.imageName) { dog in
                    DogView(dog: dog)
                }
            }
            .navigationBarTitle("Dogs")
        }
    }
}

struct DogView: View {

    let dog: Dog

    var body: some View {
        HStack {
            Image(dog.imageName).resizable()
                .scaledToFill()
                .frame(width: 100.0, height: 100.0)
                .clipShape(Circle())
                .shadow(radius: 3)
            VStack(alignment: .leading) {
                Text(dog.name).font(.headline)
                Text("Breed: \(dog.breed.rawValue.capitalized)").font(.subheadline)
                Text("Category: \(dog.category.rawValue.capitalized)").font(.subheadline)
            }
        }
    }
}

struct StoryView: View {

    var story: Story

    var body: some View {
        VStack {
            Image(story.imageName).resizable()
                .scaledToFill()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
                .overlay(RoundedRectangle(cornerRadius: 75 / 2.0).stroke(Color.red, lineWidth: 1))
                .shadow(radius: 3)
            Text(story.userName).font(.caption)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
