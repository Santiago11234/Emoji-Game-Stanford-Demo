//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Santiago Espinoza on 3/13/25.
//

import SwiftUI
import SwiftData

@main
struct Emoji_ArtApp: App {
    
    @StateObject var defaultDocument = EmojiArtDocument()

    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: defaultDocument)
        }
    }
}
