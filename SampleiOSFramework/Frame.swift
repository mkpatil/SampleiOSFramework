//
//  Framer.swift
//  SampleiOSFramework
//
//  Created by Mahesh Patil on 21/04/21.
//
//
//  TestFrameworkFile.swift
//  CentPPUniversal
//
//  Created by Mahesh Patil on 19/04/21.
//

import Foundation
#if os(macOS)
import Cocoa
import AppKit
#endif

#if os(iOS)
import UIKit
#endif

#if os(macOS)
public class Frame: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        let framer = Framer()
        framer.getFrameName().draw(in: bounds)
        framer.callReceivedToFramer()
    }
    
    public func callReceivedIniOS() {
        print("Libray deployed in Mac successfully")
    }
}
#endif

#if os(iOS)
public class Frame: UIView {
    public override func draw(_ dirtyRect: CGRect) {
        super.draw(dirtyRect)
        
        let framer = Framer()
        framer.getFrameName().draw(in: bounds)
        framer.callReceivedToFramer()
    }
    
    public func callReceivedIniOS() {
        print("Libray deployed in iOS successfully")
    }
}

#endif
public class Framer {
    public func getFrameName() -> String {
        return "My frame"
    }
    
    public func callReceivedToFramer() {
        print("Call recieved in Framer Class")
    }
}

