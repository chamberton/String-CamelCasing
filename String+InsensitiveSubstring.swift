 //
 //  String+Extensions.swift
 //
 //
 //
 //  Copyright © 2018 Serge Mbamba. All rights reserved.
 //
 //  This code is licensed under the MIT License:
 //
 //  Permission is hereby granted, free of charge, to any person obtaining a
 //  copy of this software and associated documentation files (the "Software"),
 //  to deal in the Software without restriction, including without limitation
 //  the rights to use, copy, modify, merge, publish, distribute, sublicense,
 //  and/or sell copies of the Software, and to permit persons to whom the
 //  Software is furnished to do so, subject to the following conditions:
 //
 //  The above copyright notice and this permission notice shall be included in
 //  all copies or substantial portions of the Software.
 //
 //  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 //  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 //  FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
 //  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 //  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 //  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 //  DEALINGS IN THE SOFTWARE.
 //
 
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
