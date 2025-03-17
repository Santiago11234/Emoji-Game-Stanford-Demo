//
//  PaletteManager.swift
//  Emoji Art
//
//  Created by Santiago Espinoza on 3/17/25.
//


import SwiftUI

struct PaletteManager: View {
    let stores: [PaletteStore]
    
    @State var selectedStore: PaletteStore?
    
    var body: some View {
        NavigationSplitView {
            List(stores, selection: $selectedStore) { store in
                PaletteStoreView(store: store)
                    .tag(store)
            }
        } content: {
            if let selectedStore {
                EditablePaletteList(store: selectedStore)
            }
            Text("Choose a store")
        } detail: {
            Text("Choose a palette")
        }
    }
}

struct PaletteStoreView: View {
    @ObservedObject var store: PaletteStore
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    PaletteManager(stores: [PaletteStore(named: "Preview1"),PaletteStore(named: "Preview2")])
}
