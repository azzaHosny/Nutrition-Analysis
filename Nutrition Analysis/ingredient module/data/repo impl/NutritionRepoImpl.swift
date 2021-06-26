//
//  NutritionRepoImpl.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import RxSwift

class NutritionRepoImpl: NutritionRepo {
     func GetNutritionData(param: GetNutritionRequestModel) -> Observable<GetNutientsResponse> {
        let url = Helpers.readPropertyList(urlType: "getNuitrationAnalyse")
        let params: [String: Any] = ["app_id": param.app_id, "app_key": param.app_key, "nutrition-type": param.nutrition_type, "ingr": param.ingr]
        return APICaller.makeRequest(url: url, method: .get, paramters: params, header: [:])
    }
}
