//
//  IngredientTableViewCell.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import UIKit

class IngredientTableViewCell: UITableViewCell {
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var ingredientDetailsLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func configure(ingredientObject: AddIngredientsUIViewModel) {
        ingredientDetailsLabel.text = ingredientObject.ingredient
        weightLabel.text = ingredientObject.weight
        caloriesLabel.text = ingredientObject.calories

        
    }
    
}
