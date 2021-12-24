//
//  MoyaNetwork.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import Foundation
import RxSwift
import Moya

enum CatFacts {
    case getFacts
}

extension CatFacts: TargetType {
    var baseURL: URL {
        return URL(string: "https://cat-fact.herokuapp.com")!
    }

    var path: String {
        switch self {
        case .getFacts:
            return "/facts"
        }
    }

    var method: Moya.Method {
        switch self {
        case .getFacts:
            return .get
        }
    }

    var task: Task {
        return .requestPlain
    }

    var headers: [String : String]? {
        return nil
    }
}

class CatsNetwork {
    private let provider = MoyaProvider<CatFacts>()

    func getFacts() -> Single<[Fact]> {
        return provider.rx
            .request(.getFacts)
            .filterSuccessfulStatusCodes()
            .map([Fact].self)
    }
}
