 //
 //  String+InsensitiveSubstring.swift
 //  StringExtensions
 //
 //  Created by Serge Mbamba on 2018/04/16.
 //  Copyright © 2018 Serge Mbamba. All rights reserved.
 //
 
 extension String {
    
    public func hasInsenstivePrefix(string: String) -> Bool {
        guard let range = range(of: string, options:[.caseInsensitive]) else {
            return false
        }
        return range.lowerBound == startIndex
    }
    
    public func hasInsenstiveSuffix(string: String) -> Bool {
        guard let range = range(of: string, options:[.caseInsensitive]) else {
            return false
        }
        return range.upperBound == endIndex
    }
    
    public func containsDiacriticInsentive(string: String) -> Bool {
        let diacriticInsentivePredicate = NSPredicate(format: "self contains[cd] %@", string)
        let array = [self].filter { diacriticInsentivePredicate.evaluate(with: $0)}
        return !array.isEmpty
    }
 }
