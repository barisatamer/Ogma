//
//  Bool+JSONParsable.swift
//  Ogma_Example
//
//  Created by Mathias Quintero on 4/23/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import Ogma

extension Bool: JSONParsable {
    public static let parser: AnyParser<Token, Bool> = Token.true.map { true } ||
        Token.false.map { false }
}
