//
//  ServerAPI.swift
//  seahunt
//
//  Created by Chen, Alan (DS) on 7/13/17.
//  Copyright © 2017 Chen, Alan (DS). All rights reserved.
//

import Foundation


func samplePingToServer(userName: String) {
    
    print(userName)
    
    
//    let createEndpoint: String = "http://localhost:8080/users/create?name=" + userName
//    guard let createUrl = URL(string: createEndpoint) else {
//        print("Error: cannot create URL")
//        return
//    }
//    let createUrlRequest = URLRequest(url: createUrl)
//    let createSession = URLSession.shared
//    let createTask = createSession.dataTask(with: createUrlRequest) {
//        (data, response, error) in
//        // check for any errors
//        guard error == nil else {
//            print("error calling GET on /create")
//            print(error!)
//            return
//        }
//        // make sure we got data
//        guard let responseData = data else {
//            print("Error: did not receive data")
//            return
//        }
//        // parse the result as JSON, since that's what the API provides
//        do {
//            guard let user = try JSONSerialization.jsonObject(with: responseData, options: [])
//                as? [String: Any] else {
//                    print("error trying to convert data to JSON")
//                    return
//            }
//            
//            print("The id is: " + name)
//        } catch  {
//            print("error trying to convert data to JSON")
//            return
//        }
//    }
//    createTask.resume()
    
    
    //let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
    let todoEndpoint: String = "http://localhost:8080/users?name=" + "hello"
    guard let url = URL(string: todoEndpoint) else {
        print("Error: cannot create URL")
        return
    }
    let urlRequest = URLRequest(url: url)
    let session = URLSession.shared
    

    
    let task = session.dataTask(with: urlRequest) {
        (data, response, error) in
        // check for any errors
        guard error == nil else {
            print("error calling GET on /getAllUsers")
            print(error!)
            return
        }
        // make sure we got data
        guard let responseData = data else {
            print("Error: did not receive data")
            return
        }
        // parse the result as JSON, since that's what the API provides
        do {
            guard let user = try JSONSerialization.jsonObject(with: responseData, options: [])
                as? [String: Any] else {
                    print("error trying to convert data to JSON")
                    return
            }
            // now we have the user
            // let's just print it to prove we can access it
            print("One name is: " + user.description)
            
            // the todo object is a dictionary
            // so we just access the title using the "title" key
            // so check for a title and print it if we have one
            guard let name = user["name"] as? String else {
                print("Could not get user name from JSON")
                return
            }
            guard let id = user["id"] as? Int else {
                print("Could not get id as int from JSON")
                return
            }
            print("The name is: " + name)
            print("The id is: \(id)")
        } catch  {
            print("error trying to convert data to JSON")
            return
        }
    }
    task.resume()
    
}
