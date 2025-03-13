//
//  Item.swift
//  Emoji Art
//
//  Created by Santiago Espinoza on 3/13/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
