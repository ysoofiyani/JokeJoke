//
//  ViewController.swift
//  JokeJoke
//
//  Created by Yasser on 2020-10-24.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var jokeViewModels = [JokeViewModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getJokes()
        tableView.dataSource = self
        tableView.register(JokeTableViewCell.self, forCellReuseIdentifier: JokeTableViewCell.identifier)
    }
    
    func getJokes() {
        JokeService.shared.getJokes { (result) in
            switch result {
            case .success(let jokes):
                self.jokeViewModels = jokes.map({return JokeViewModel(joke: $0)})
                self.tableView.reloadData()
                break
            case .failure(let error):
                self.jokeViewModels = []
                print(error)
                break
            
            }
        }
    }
    
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("jokesCount: \(jokeViewModels.count)")
        return jokeViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.numberOfLines = 0
//        cell.textLabel?.text = jokeViewModels[indexPath.row].setup
        let cell = tableView.dequeueReusableCell(withIdentifier: JokeTableViewCell.identifier, for: indexPath) as! JokeTableViewCell
        let jokeViewModel = jokeViewModels[indexPath.row]
        cell.configure(jokeViewModel: jokeViewModel)
        return cell
    }
    
    
}

