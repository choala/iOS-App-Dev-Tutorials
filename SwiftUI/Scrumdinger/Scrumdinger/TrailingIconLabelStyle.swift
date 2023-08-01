//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 박채영 on 2023/08/01.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// leading-dot syntax 사용을 위해 static property로 선언
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
