//
//  ViewController.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import UIKit
import RxSwift
import RxCocoa
import RxAlamofire

class ViewController: UIViewController {

    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()

        testNetworkCall()
    }

    func testNetworkCall() {
//        let network = Networking()
//        network.getItems { result in
//            switch result {
//            case .success(let facts):
//                print(facts.count)
//                print(facts.first?.text)
//            case .failure(let error):
//                print(error)
//            }
//        }

//        network.getItems().subscribe { result in
//            switch result {
//            case .success(let facts):
//                print(facts.count)
//                print(facts.first?.text)
//            case .failure(let error):
//                print(error)
//            }
//        } onError: { error in
//            print(error)
//        }
//        .disposed(by: disposeBag)

//        let url = URL(string: "https://cat-fact.herokuapp.com/facts")!
//        json(.get, url)
//            .debug()
//            .observe(on: MainScheduler.asyncInstance)
//            .subscribe { response in
//                print(response)
//            }
//            .disposed(by: disposeBag)

        let network = CatsNetwork()
        network.getFacts().subscribe { facts in
            print(facts.count)
        } onFailure: { error in
            print(error)
        }
        .disposed(by: disposeBag)

    }

}

