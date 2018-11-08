//
//  ViewController.swift
//  Week3Assessment
//
//  Created by Ryan Brashear on 1/3/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var personArray = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadPeople()
    }
    
    func randomString(length: Int) -> String {//This will be used to create people names and favorite things
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        //This will take the length and spit out random letters
        return String((0...length-1).map{ _ in letters.randomElement()! })
    }
    
    func loadPeople () {
        for _ in 0..<10000{
            let person = Person(name: randomString(length: 10), favoriteThing: randomString(length: 15), favoriteColor: UIColor(hue: CGFloat(Double.random(in: 0..<1)), saturation: CGFloat(Double.random(in: 0..<1)), brightness: CGFloat(Double.random(in: 0..<1)), alpha: CGFloat(Double.random(in: 0..<1))))
            personArray.append(person)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create the cell instance as a personCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! personCell
        //make all the attributes of the person into variables for easier access
        let personName = personArray[indexPath.row].name
        let personFav = personArray[indexPath.row].favoriteThing
        let favColor = personArray[indexPath.row].favoriteColor
        //set all the labels to text
        cell.personName.text = personName
        cell.favoriteThing.text = personFav
        //set the background color
        cell.backgroundColor = favColor
        return cell
    }
    
    
}
