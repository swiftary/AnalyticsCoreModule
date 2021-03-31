//
//  AnalyticsManager.swift
//
//
// 
//  Copyright © 2020 All rights reserved.
//

import Foundation

public class AnalyticsManager {
    //TODO: - Use Dependency injection here
    public static let shared = AnalyticsManager()
    private var analyticsEngines: [AnalyticsEngineInterface]?

    public init(analyticsEngines: [AnalyticsEngineInterface]? = nil) {
        self.analyticsEngines = analyticsEngines
    }

    /// Description :
    /// - Parameter analyticEvent:
    public func sendEvent(analyticEvent: AnalyticsEventInterface) {
        analyticEvent.analyticsData.forEach { (data) in
            getEngine(with: data.engineType)?.log(analyticEventData: data)
        }
    }
    public func getEngine(with engineType: CustomStringConvertible) -> AnalyticsEngineInterface? {
        return analyticsEngines?.first(where: {$0.engineType.description == engineType.description})
    }

}
