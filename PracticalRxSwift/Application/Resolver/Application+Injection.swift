//
//  Application+Injection.swift
//  PracticalRxSwift
//
//  Created by Karim Ebrahem on 24/12/2021.
//

import Foundation
import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        // Register You WHOLE App Classes
        registerHomeModule()
    }
}
