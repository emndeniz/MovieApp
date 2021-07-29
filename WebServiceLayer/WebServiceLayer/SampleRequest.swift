//
//  SampleRequest.swift
//  WebServiceLayer
//
//  Created by Mehmet Emin Deniz on 29.07.2021.
//

import Foundation
import Alamofire

public class SampleRequest {
    public init() {
        
    }
    
    public func getEmailFromDummyData(completion:@escaping (String?) -> ()) {
        AF.request("https://reqres.in/api/users/2").responseDecodable(of: SampleResponse.self) { result in
            switch result.result {
            case .success(let response):
               print(response)
                completion(response.data?.email)
            case .failure(let error):
                print("Something went wrong: \(error)")
            }
        }
        
    }
}
