//
//  JokeTableViewCell.swift
//  JokeJoke
//
//  Created by Yasser on 2020-10-25.
//

import UIKit

class JokeTableViewCell: UITableViewCell {

  
   static let identifier = "JokeCellId"
    
    
    func configure(jokeViewModel: JokeViewModel){
        textLabel?.text = jokeViewModel.setup
        detailTextLabel?.text = jokeViewModel.punchline
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        

        // cell customization
        textLabel?.numberOfLines = 0
        detailTextLabel?.numberOfLines = 0
        textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.systemFont(ofSize: 12, weight: .light)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
