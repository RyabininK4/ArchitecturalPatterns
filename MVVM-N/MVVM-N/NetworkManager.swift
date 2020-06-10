//
//  NetworkManager.swift
//  MVVM-N
//
//  Created by Ryabinin on 09.06.2020.
//  Copyright © 2020 Ryabinin. All rights reserved.
//

import Foundation

class NetworkManger: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
}
