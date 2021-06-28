//
//  NutritionRepo.swift
//  Nutrition Analysis
//
//  Created by azah on 6/25/21.
//

import RxSwift
protocol NutritionRepo {
     func GetNutritionData(param: GetNutritionRequestModel) -> Observable<GetNutientsResponse>
}
