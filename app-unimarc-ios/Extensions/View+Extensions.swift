//
//  View+Extensions.swift
//  app-unimarc-ios
//
//  Created by Constanza on 16-12-20.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}

