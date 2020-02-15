//
//  DetailViewModel.swift
//  TimePicker
//
//  Created by Kazuya Ueoka on 2020/02/12.
//  Copyright © 2020 fromKK. All rights reserved.
//

import Core
import Foundation

final class DetailViewModel: ObservableObject {
    var dates: [(Date, Date)]
    init(dates: [(Date, Date)]) {
        self.dates = dates
        text = FreeTimeConverter(dates: dates).toString()
    }

    @Published var text: String = ""
}
