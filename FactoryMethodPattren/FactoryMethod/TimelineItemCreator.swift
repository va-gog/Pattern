//
//  TimelineItemCreator.swift
//  FactoryMethodPattren
//
//  Created by Gohar Vardanyan on 11.02.22.
//

import UIKit

protocol TimelineItemCreator: Trimable, Moveable {
    func createItem() -> TimelineItem?
}

protocol Trimable {
    func trimAction()
}

protocol Moveable {
    func moveAction()
}


extension TimelineItemCreator {
    func trimAction() {
        let item = createItem()
        item?.trim(15)
    }
    
    func moveAction() {
        let item = createItem()
        item?.move(25)
    }
}

class VideoItemCreator: TimelineItemCreator {
    func createItem() -> TimelineItem? {
        print("videoItem Created")
        return VideoTimelineItem()
    }
    
    func trimAction() {
         print("I will do nothing Ho Ho Ho")
    }
}

class AudioItemCreator: TimelineItemCreator {
    
    func createItem() -> TimelineItem? {
        print("audioItem Created")
        return AudioTimelineItem()
    }
}

