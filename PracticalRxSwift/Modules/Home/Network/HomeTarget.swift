//
//  HomeTarget.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import Foundation
import Moya

enum Home {
    case search(String)
}

extension Home: TargetType {
    var baseURL: URL {
        return URL(string: "http://universities.hipolabs.com")!
    }

    var path: String {
        return "/search"
    }

    var method: Moya.Method {
        return .get
    }

    var task: Task {
        switch self {
        case .search(let text):
            return .requestParameters(parameters: ["name": text], encoding: URLEncoding.default)
        }
    }

    var headers: [String : String]? {
        return nil
    }
}
