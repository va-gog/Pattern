//
//  TimelineItem.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 11.02.22.
//

import CoreGraphics

protocol TimelineItem {
    var width: CGFloat { get }
    var factorX: CGFloat { get }
    var type: String { get }
    
    func trim(_ translation: CGFloat)
    func move(_ translation: CGFloat)
}

extension TimelineItem {
    func trim(_ translation: CGFloat) {
        print("Initial width of the \(type) was \(width) but it trimmed \(translation) points. Final width is \(width - translation)")
    }
    
    func move(_ translation: CGFloat) {
        print("Initial X position of the \(type) was \(width) but it moved \(translation) points. Final X position is \(factorX - translation)")
    }
}

class VideoTimelineItem: TimelineItem {
    let width: CGFloat = 100
    let factorX: CGFloat = 0
    let type: String = "video"
}

class AudioTimelineItem: TimelineItem {
    let width: CGFloat = 50
    let factorX: CGFloat = 100
    let type: String = "audio"
    
}
