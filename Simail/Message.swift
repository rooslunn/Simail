//
//  Message.swift
//  Simail
//
//  Created by Russ on 8/2/15.
//  Copyright (c) 2015 Russ. All rights reserved.
//

import Foundation

struct Message {
    let text: String
    let author: String
    
    static let all: [Message] = [
        Message(text: "Never put off until tomorrow what you can do the day after tomorrow.", author: "Mark Twain"),
        Message(text: "Efficiency is doing better what is already being done.", author: "Peter Drucker"),
        Message(text: "To infinity and beyond!", author: "Buzz Lightyear"),
        Message(text: "May the Force be with you.", author: "Han Solo"),
        Message(text: "Simplicity is the ultimate sophistication", author: "Leonardo da Vinci"),
        Message(text: "It’s not just what it looks like and feels like. Design is how it works.", author: "Steve Jobs")
    ]
}

// MARK: - Printable

extension Message: Printable {
    var description: String {
        return "\"\(text)\" — \(author)"
    }
}
