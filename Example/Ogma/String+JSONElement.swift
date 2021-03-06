//
//  String+JSONParsable.swift
//  Ogma_Example
//
//  Created by Mathias Quintero on 4/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import Ogma

extension String: JSONElement {
    public static let parser: AnyParser<JSON.Token, String> = .consuming(keyPath: \.string)

    var json: JSON {
        return .string(self)
    }
}
