//
//  UpdateStore.swift
//  DesignCode
//
//  Created by ㅣ on 2023/05/05.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}
