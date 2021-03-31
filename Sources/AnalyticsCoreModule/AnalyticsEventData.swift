//
//  AnalyticsEventData.swift
//  AnalyticsCoreModule
//
//  Created by msait on 19.03.2021.
//

import Foundation

public struct AnalyticsEventData {
    private(set) public var name: String
    private(set) public var metadata: [String: Any?]?
    private(set) public var engineType: CustomStringConvertible

    public init(engineType: CustomStringConvertible, name: String, metadata: [String: Any?]? = nil) {
        self.name = name
        self.metadata = metadata
        self.engineType = engineType
    }
}
