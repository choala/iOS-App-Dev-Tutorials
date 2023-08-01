//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 박채영 on 2023/08/01.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            // List는 컬렉션의 개별 항목을 식별할 수 있는 방법이 필요
            // DailyScurm이 Identifable을 따르지 않을 경우,
            // 샘플 데이터가 모두 다른 title 값을 가짐 > title 프로퍼티로 각 항목을 식별
            List(scrums) { scrum in
                NavigationLink {
                    DetailView(scrum: scrum)
                } label: {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button {
                    print("")
                } label: {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
    }
}
