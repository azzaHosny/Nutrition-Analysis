//
//  IngredientListViewController.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import UIKit

class IngredientListViewController: UIViewController {
    var ingredinetList: [AddIngredientsUIViewModel] = []
    @IBOutlet weak var ingredientTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        ingredientTableView.register(UINib(nibName: "IngredientTableViewCell", bundle: nil), forCellReuseIdentifier: "IngredientTableViewCell")
    }
    
}

extension IngredientListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        ingredinetList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientTableViewCell") as! IngredientTableViewCell
        cell.configure(ingredientObject: ingredinetList[indexPath.row])
        return cell
    }

}
