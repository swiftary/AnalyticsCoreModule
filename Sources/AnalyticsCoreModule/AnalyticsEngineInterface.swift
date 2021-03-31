//
//  AnalyticsEngine.swift
//
//
//  
//  Copyright © 2020 All rights reserved.
//

public protocol AnalyticsEngineInterface {
    var engineType: CustomStringConvertible { get }
    func log(analyticEventData: AnalyticsEventData)

}


