//
//  History.swift
//  Soshiki
//
//  Created by Jim Phieffer on 1/4/23.
//

import Foundation

struct History: Codable {
    let id: String
    let page: Int?
    let chapter: Double?
    let volume: Double?
    let timestamp: Int?
    let episode: Double?
    let score: Double?
    let status: History.Status

    enum Status: String, Codable {
        case completed = "COMPLETED"
        case inProgress = "IN_PROGRESS"
        case planned = "PLANNED"
        case dropped = "DROPPED"
        case paused = "PAUSED"
        case unknown = "UNKNOWN"
    }

    func withId(_ newId: String) -> History {
        History(
            id: newId,
            page: self.page,
            chapter: self.chapter,
            volume: self.volume,
            timestamp: self.timestamp,
            episode: self.episode,
            score: self.score,
            status: self.status
        )
    }
}

struct Histories: Codable {
    let text: [History]
    let image: [History]
    let video: [History]
}
