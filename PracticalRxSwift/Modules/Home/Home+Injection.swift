//
//  Home+Injection.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import Foundation
import Resolver

extension Resolver {
    static func registerHomeModule() {
        // Register Network
        register {
            HomeNetworkImplementation()
        }
        .implements(HomeNetwork.self)

        // Register View Model

        // Register View Controller
        register {
            HomeViewController()
        }
    }
}
