//
//  Note.swift
//  Notes Watch App
//
//  Created by Petr Yanenko on 14.02.2023.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
