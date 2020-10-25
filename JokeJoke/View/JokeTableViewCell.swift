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
        textLabel?.numberOfLines = 0
        textLabel?.text = jokeViewModel.setup
    }
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
