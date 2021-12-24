//
//  Networking.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import Foundation
import RxSwift
import RxCocoa
import Moya

// GET https://cat-fact.herokuapp.com/facts

struct Fact: Codable {
    var text: String
    var type: String
}

enum NetworkingError: Error {
    case somethingWentWrong
    case numberOfFactsNotEnough
}

class Networking {
    //    func getItems(_ completionHandler: @escaping (Result<[Fact], Error>) -> Void) {
    //        let url = URL(string: "https://cat-fact.herokuapp.com/facts")!
    //        AF.request(url, method: .get).responseDecodable { (response: DataResponse<[Fact], AFError>) in
    //            switch response.result {
    //            case .success(let facts):
    //                completionHandler(.success(facts))
    //            case .failure:
    //                completionHandler(.failure(NetworkingError.somethingWentWrong))
    //            }
    //        }
    //    }

    //    func getItems() -> Observable<Result<[Fact], Error>> {
    //        let url = URL(string: "https://cat-fact.herokuapp.com/facts")!
    //        return Observable.create { observer in
    //            AF.request(url, method: .get).responseDecodable { (response: DataResponse<[Fact], AFError>) in
    //                switch response.result {
    //                case .success(let facts):
    //                    observer.onNext(.success(facts))
    //                case .failure:
    //                    observer.onError(NetworkingError.somethingWentWrong)
    //                }
    //            }
    //            return Disposables.create()
    //        }
    //    }

    //    func getItems() -> Observable<Result<[Fact], Error>> {
    //        let url = URL(string: "https://cat-fact.herokuapp.com/facts")!
    //        var urlRequest = URLRequest(url: url)
    //        urlRequest.method = .get
    //        return URLSession.shared.rx.data(request: urlRequest)
//                .map { data in
//                    let facts = try JSONDecoder().decode([Fact].self, from: data)
//                    return .success(facts)
//                }
    //            .observe(on: MainScheduler.asyncInstance)
    //    }

//    func getItems() -> Observable<Result<[Fact], Error>> {
        // MARK: URLSession simple and fast
//        let url = URL(string: "https://cat-fact.herokuapp.com/facts")!
//        return json(.get, url)
//            .debug()
//            .observe(on: MainScheduler.asyncInstance)
//    }

//    func getItems() -> Observable<Result<[Fact], Error>> {
//
//    }
}
