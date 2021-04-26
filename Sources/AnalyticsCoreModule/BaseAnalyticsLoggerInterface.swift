//
//  File.swift
//  
//
//  Created by cyber_man on 26.04.2021.
//

import Foundation

public protocol BaseAnalyticsLoggerInterface {
    func log(with event: AnalyticsEventInterface)
}
