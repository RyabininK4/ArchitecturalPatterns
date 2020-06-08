//
//  CommentNetworkService.swift
//  MVC-N
//
//  Created by Ryabinin on 08.06.2020.
//  Copyright © 2020 Ryabinin. All rights reserved.
//

import Foundation

class CommentNetworkService {
    
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkingService.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print("Error")
            }
        }
    }
    
}
