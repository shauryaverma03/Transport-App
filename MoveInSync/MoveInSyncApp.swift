//
//  MoveInSyncApp.swift
//  MoveInSync
//
//  Created by Shaurya Verma on 06/04/26.
//

import SwiftUI
import CoreData

@main
struct MoveInSyncApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
