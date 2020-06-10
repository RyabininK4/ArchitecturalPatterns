//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Ryabinin on 09.06.2020.
//  Copyright © 2020 Ryabinin. All rights reserved.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "Kirill", secondName: "Ryabinin", age: 23)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return "\(profile.age)"
    }
}
