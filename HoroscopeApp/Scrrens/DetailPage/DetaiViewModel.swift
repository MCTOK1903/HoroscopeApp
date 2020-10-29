//
//  DetaiViewModel.swift
//  HoroscopeApp
//
//  Created by MCT on 29.10.2020.
//

import Foundation
import Alamofire

class DetailViewModel: DetailViewModelType {
    
    // MARK: Properties
    var result: AstroDetailModel? = nil {
        didSet {
            resultsDidChange?(result!)
        }
    }
    
    var resultsDidChange: ((AstroDetailModel) -> Void)?
    
    // MARK: Funcs
    
    func returnRetult() -> AstroDetailModel {
        return result!
    }
    
    func fetchData(param: [String:Any], completion: @escaping (AFResult<Codable>) -> Void) {
        NetworkService.shared.service(.post, url: Constant.NetworkConstant.baseUrl, model: AstroDetailModel.self, parameters: param) { [weak self] (response) in
            switch response {
            case .success(let AstroDetail):
                let astroDetailResult = AstroDetail as! AstroDetailModel
                print(astroDetailResult)
                self?.result = astroDetailResult
            case .failure(let error):
                print(error)
            }
        }
    }
}
