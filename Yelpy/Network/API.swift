//
//  File.swift
//  Yelpy
//
//  Created by Memo on 5/21/20.
//  Copyright © 2020 memo. All rights reserved.
//

import Foundation


struct API {
    

    
    static func getRestaurants(completion: @escaping ([[String:Any]]?) -> Void) {
        
        // ––––– TODO: Add your own API key!
        let apikey = "sCzOUB2XUgxJqP7ztONVX3URZ865b3JNUPYej1cJLufcepnhH-weV1qOrZfeAgoFfEDp6SQU8XSXDpKNZd8P6YQcQRH8IzYECEMVLhap0faArWkfy65jaq5hhhVUX3Yx"
        
        // Coordinates for San Jose
        let lat = 37.3900
        let long = -121.9826
        
        
        let url = URL(string: "https://api.yelp.com/v3/transactions/delivery/search?latitude=\(lat)&longitude=\(long)")!
        
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        
        // Insert API Key to request
        request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
        
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                
        

                // ––––– TODO: Get data from API and return it using completion
                
                print(data)
                
                let dataDictionary = try!JSONSerialization.jsonObject(with: data, options: []) as!
                    [String: Any]
                let restaurants = dataDictionary["businesses"] as! [[String: Any]]
                
                
                return completion(restaurants)
                
                }
            }
        
            task.resume()
        
        }
    }

    
