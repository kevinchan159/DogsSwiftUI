//
//  Dog.swift
//  DogsSwiftUI
//
//  Created by Kevin Chan on 2/14/20.
//  Copyright © 2020 cornellappdev. All rights reserved.
//

import Foundation

enum Breed: String {
    case corgi, bull, pug, shiba, golden, shepherd, beagle
}

enum DogCategory: String, CaseIterable {
    case cute, meh, ugly, best
}

struct Dog {

    let imageName: String
    let name: String
    let breed: Breed
    let category: DogCategory

}
