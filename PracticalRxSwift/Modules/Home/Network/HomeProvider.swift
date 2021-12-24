//
//  HomeProvider.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import Foundation
import RxSwift
import Moya

protocol HomeNetwork: AnyObject {
    func search(text: String) -> Single<[University]>
}

class HomeNetworkImplementation: HomeNetwork {
    private let provider = MoyaProvider<Home>()

    func search(text: String) -> Single<[University]> {
        return provider.rx
            .request(.search(text))
            .filterSuccessfulStatusCodes()
            .map([University].self)
    }
}
