//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 박채영 on 2023/08/01.
//

import SwiftUI

// LabelStyle: Label 뷰의 스타일을 커스터마이즈하기 위해 사용되는 프로토콜
struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// Self가 TrailingIconLabelStyle일 때만 사용할 수 있는 정적 변수인 trailingIcon을 추가
extension LabelStyle where Self == TrailingIconLabelStyle {
    // leading-dot syntax 사용을 위해 static property로 선언
    static var trailingIcon: Self { Self() }
}
