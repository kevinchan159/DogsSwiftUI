//
//  ContentView.swift
//  DogsSwiftUIStarter
//
//  Created by Kevin Chan on 2/15/20.
//  Copyright © 2020 cornellappdev. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {

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
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
