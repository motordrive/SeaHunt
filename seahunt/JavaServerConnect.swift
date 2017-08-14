//
//  JavaServerConnect.swift
//  seahunt
//
//  Created by Fowler, Elena on 7/14/17.
//  Copyright © 2017 Chen, Alan (DS). All rights reserved.
//

import UIKit

class JavaServerConnect {

    let url: String = "https://seahunt-server.herokuapp.com"
    
    func getAllUsers()
    {
        let urlString: String = url + "/getAllUsers"
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        task.resume()
    }
    
    func createUser(userName: String, password: String)
    {
        let urlString: String = url + "/users/create?name=" + userName + "&password=" + password
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        task.resume()
    }
    
    func checkLogin(userName: String, password: String) -> String
    {
        let urlString: String = url + "/checkLogin?name=" + userName + "&password=" + password
        
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return "error"
        }
        
        do {
            let contents = try String(contentsOf: url)
            print(contents)
            return(contents)
        } catch {
            print("error")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        
        task.resume()
        return "error"
    }
    
    func findUser(userName: String) -> String
    {
        let urlString: String = url + "/findUser?name=" + userName
        
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return "error"
        }
        
        do {
            let contents = try String(contentsOf: url)
            print(contents)
            return(contents)
        } catch {
            print("error")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        
        task.resume()
        return "error"
    }
    
    
    func getProgress(userName: String) -> String
    {
        let urlString: String = url + "/getProgress?name=" + userName
        
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return "error"
        }
        
        do {
            let contents = try String(contentsOf: url)
            print(contents)
            return contents
            
        } catch {
            print("error")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        
        task.resume()
        return "error"
    }
    
    
    func setProgress(userName: String, location: Int, riddle: Int)
    {
        let urlString: String = url + "/setProgress?"
        let parameters: String = "name=" + userName + "&location=" + String(location)
        let parameter2: String = "&riddle=" + String(riddle)
        
        guard let url: URL = URL(string: urlString + parameters + parameter2) else
        {
            print("Error: cannot create URL")
            return
        }
        
        do {
            let contents = try String(contentsOf: url)
            print(contents)
            
            
        } catch {
            print("error")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        
        task.resume()
        //return "error"
    }
    
    func updateUser(userName: String, newPassword: String)
    {
        let urlString: String = url + "/updateUser?name=" + userName + "&newPassword=" + newPassword
        
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return
        }
        
        do {
            let contents = try String(contentsOf: url)
            print(contents)
            return
            
        } catch {
            print("error")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        
        task.resume()
        
    }
    
    func getDTProgress() -> Character
    {
        let progress: String  = self.getProgress(userName: ViewController.currentUser!)
        return progress[progress.startIndex]
    }
    
    func getNProgress() -> Character
    {
        let progress: String  = self.getProgress(userName: ViewController.currentUser!)
        return progress[progress.index(after: progress.startIndex)]
        
    }
    
    func getWProgress() -> Character
    {
        let progress: String  = self.getProgress(userName: ViewController.currentUser!)
        return progress[progress.index(before: progress.endIndex)]
        
    }
    
    func resetProgress(userName: String)
    {
        let urlString: String = url + "/resetProgress?name=" + userName
        
        guard let url: URL = URL(string: urlString) else
        {
            print("Error: cannot create URL")
            return
        }
        
        do {
            let contents = try String(contentsOf: url)
            print(contents)
            return
            
        } catch {
            print("error")
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {_, _, _ in})
        
        
        task.resume()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
