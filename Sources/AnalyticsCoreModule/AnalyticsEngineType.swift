//
//  AnalyticsEngineType.swift
//  AnalyticsCoreAdapter
//
//  Created by msait on 22.03.2021.
//

import Foundation

public enum AnalyticsEngineType: String, CustomStringConvertible {


    case firebase = "Firebase"
    case adjust = "Adjust"

    public var description: String {
        return self.rawValue
    }
}
