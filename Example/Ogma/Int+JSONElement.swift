//
//  Int+JSONParsable.swift
//  Ogma_Example
//
//  Created by Mathias Quintero on 4/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import Ogma

extension Int: JSONElement {
    public static let parser: AnyParser<JSON.Token, Int> = .consuming(keyPath: \.int)

    var json: JSON {
        return .int(self)
    }
}
