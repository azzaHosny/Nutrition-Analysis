//
//  IngredientListViewController.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import UIKit

class IngredientListViewController: UIViewController {
//    var ingredinetList: [AddIngredientsUIViewModel] = []
    var viewModel: IngredientListViewModel
    @IBOutlet weak var ingredientTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    init(viewModel: IngredientListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: "IngredientListViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        ingredientTableView.register(UINib(nibName: "IngredientTableViewCell", bundle: nil), forCellReuseIdentifier: "IngredientTableViewCell")
    }
    
}

extension IngredientListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.ingredientsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientTableViewCell") as! IngredientTableViewCell
        cell.configure(ingredientObject: viewModel.ingredientsData[indexPath.row])
        return cell
    }

}
