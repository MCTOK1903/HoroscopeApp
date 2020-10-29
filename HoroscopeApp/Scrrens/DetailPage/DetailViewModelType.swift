//
//  DetailViewModelType.swift
//  HoroscopeApp
//
//  Created by MCT on 29.10.2020.
//

import Foundation
import Alamofire

protocol DetailViewModelType {
    
    var resultsDidChange: ((AstroDetailModel) -> Void)? { get set }
    
    func returnRetult() -> AstroDetailModel
    func fetchData(param: [String:Any], completion: @escaping (AFResult<Codable>) -> Void)
}
