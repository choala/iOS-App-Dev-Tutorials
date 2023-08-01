//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 박채영 on 2023/08/01.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
