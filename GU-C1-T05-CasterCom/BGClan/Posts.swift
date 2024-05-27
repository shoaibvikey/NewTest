//
//  Posts.swift
//  BGClan
//
//  Created by Batch-2 on 26/05/24.
//



import Foundation
import UIKit



struct Posts {
    var posts: UIImage
}

// Define the array of posts
var posts: [Posts] {
    return [
        Posts(posts: UIImage(named: "A2") ?? UIImage()), // Handle if image is nil
        Posts(posts: UIImage(named: "A1") ?? UIImage()), // Handle if image is nil
        Posts(posts: UIImage(named: "A3") ?? UIImage())  // Handle if image is nil
    ]
}
