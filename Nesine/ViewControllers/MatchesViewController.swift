//
//  MatchViewController.swift
//  Nesine
//
//  Created by Kate Kashko on 7.10.2023.
//

import UIKit

final class MatchesViewController: UITableViewController {
    
    private var matches: [Match] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchMatches()

    }
    

 
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        matches.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MatchCell
        
        let match = matches[indexPath.row]
        cell.configure(with: match)
        
        return cell
    }
}

// MARK: - Networking
extension MatchesViewController {
    private func fetchMatches() {
        guard let url = URL(string: "https://nesine-case-study.onrender.com/bets") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                self.matches = try decoder.decode([Match].self, from: data)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }
}
