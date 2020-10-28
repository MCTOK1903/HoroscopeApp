//
//  NetworkService.swift
//  HoroscopeApp
//
//  Created by MCT on 28.10.2020.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkService {
    
    // MARK: Properties
    
    public static let shared: NetworkService = NetworkService()
    
    private let header: HTTPHeaders = [
        "Authorization": Constant.NetworkConstant.AuthKey,
        "Content-Type": "application/json;charset=UTF-8"
    ]
}

// MARK: - Public Functions
extension NetworkService {
    
    public func service<T:Codable>(_ method: HTTPMethod,url:String,model: T.Type,parameters: Parameters?, completion: @escaping(AFResult<Codable>) -> Void ) {
        
        AF.request(url,method:method,parameters: parameters,encoding: JSONEncoding.default, headers: header).validate(statusCode: 200..<600).responseJSON { (response) in
            
            switch response.result {
            case .success(let value as [String:AnyObject]):
                do {
                    let responseJsonData = JSON(value)
                    let responseModel = try JSONDecoder().decode(model.self, from: responseJsonData.rawData())
                    completion(.success(responseModel))
                }
                catch let parsingError {
                    print("Download success but parsing error (error): \(parsingError)")
                }
            case .failure(let error):
                print("Failure: \(error)")
                completion(.failure(error))
                
            default: fatalError("Fatal Error")
            }
        }
    }
}
