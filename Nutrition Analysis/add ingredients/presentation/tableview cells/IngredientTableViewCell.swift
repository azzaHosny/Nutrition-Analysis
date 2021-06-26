//
//  IngredientTableViewCell.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import UIKit

class IngredientTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ingredientDetailsLB: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(ingredientObject: AddIngredientsUIViewModel) {
        ingredientDetailsLB.text = ingredientObject.weight
    }
    
}
