//
//  ModalManager.swift
//  sketch-elements
//
//  Created by Filip Molcik on 11/03/2020.
//  Copyright © 2020 Filip Molcik. All rights reserved.
//

import SwiftUI

class ModalManager: ObservableObject {
    
    @Published var modal: Modal = Modal(position: .closed, content: AnyView(Text("test")))
    
    func newModal<Content: View>(@ViewBuilder content: () -> Content ) {
        modal = Modal(position: .partiallyRevealed, content: AnyView(content()))
    }
    
    func closeModal() {
        modal.position = .closed
    }
    
    
}