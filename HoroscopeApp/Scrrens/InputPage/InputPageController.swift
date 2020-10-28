//
//  InputPageController.swift
//  HoroscopeApp
//
//  Created by MCT on 28.10.2020.
//

import UIKit

class InputPageController: UIViewController {
    
    let parametre: [String:Any] = [
        "day": 1,
        "month": 5,
        "year": 1990,
        "hour": 15,
        "min": 55,
        "lat": 19.2087,
        "lon": 25.8422,
        "tzone": 5.5
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        
        NetworkService.shared.service(.post, url: "https://json.astrologyapi.com/v1/astro_details", model: AstroDetailModel.self, parameters: parametre) { (response) in
            switch response {
            case .success(let model):
                print(model)
            case .failure(let error):
                print(error)
            }
        }
    }

}
