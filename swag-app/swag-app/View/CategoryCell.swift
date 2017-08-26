//
//  CategoryCell.swift
//  swag-app
//
//  Created by Benjamin on 26/08/2017.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
