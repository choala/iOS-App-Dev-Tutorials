//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by 박채영 on 2023/08/02.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    var skipAction: () -> Void
    
    private var speakerNumber: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil }
        return index + 1
    }
    
    private var isLastSpeaker: Bool {
        return speakers.dropLast().allSatisfy { $0.isCompleted }
    }
    
    var body: some View {
        HStack {
            Text("Speaker 1 of 3")
            Spacer()
            Button {
                print("")
            } label: {
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next Speaker")
        }
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView(speakers: DailyScrum.sampleData[0].attendees.speakers, skipAction: {})
            .previewLayout(.sizeThatFits)
    }
}
