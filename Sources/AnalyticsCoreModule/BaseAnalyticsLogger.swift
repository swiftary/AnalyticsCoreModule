//
//  BaseAnalyticsLogger.swift
//
//
//  
//  Copyright © 2020 All rights reserved.
//

import Foundation

open class BaseAnalyticsLogger: BaseAnalyticsLoggerInterface {
    
    private let analyticsManager: AnalyticsManager

    public init(analyticsManager: AnalyticsManager) {
        self.analyticsManager = analyticsManager
    }
    
    public func log(with event: AnalyticsEventInterface) {
        analyticsManager.sendEvent(analyticEvent: event)
    }
}
