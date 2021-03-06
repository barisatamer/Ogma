//
//  Array+TokenGenerator.swift
//  Ogma
//
//  Created by Mathias Quintero on 24.02.19.
//  Copyright © 2019 Mathias Quintero. All rights reserved.
//

import Foundation

extension Array: TokenGenerator where Element: TokenGenerator {

    public typealias Token = Element.Token
    
    public func take(text: String) throws -> Result {
        var errors: [LexerError] = []

        for generator in self {
            do {
                return try generator.take(text: text)
            } catch let error as LexerError {
                errors.append(error)
            } catch {
                errors.append(.custom(error))
            }
        }

        throw LexerError.noGeneratorMatched(text, errors: errors)
    }

    public func annotate(text: String) throws -> [AnnotationElement<Element.Token?>] {
        return try reduce([.text(text)]) { try $1.annotate($0) }
    }
    
}
