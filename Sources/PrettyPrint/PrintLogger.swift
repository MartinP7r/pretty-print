//
//  PrintLogger.swift
//
//  Created by Martin Pfundmair on 2018-05-20.
//  Copyright © 2018 Martin Pfundmair. All rights reserved.
//

import Foundation

public class PrintLogger: Logger {

    static var dateFormatter: DateFormatter = {
        let defaultDateFormatter = DateFormatter()
        defaultDateFormatter.locale = NSLocale.current
        defaultDateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return defaultDateFormatter
    }()

    var dateString: String { PrintLogger.dateFormatter.string(from: Date()) }

    static func setup() -> Logger { PrintLogger() }

    func verbose(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int) {
        guard let closure = closure() else { return }
        #if DEBUG
        print("\(dateString) ⚪️ [\(String(path).split(separator: "/").last ?? ""):\(line)] \(String(describing: closure))")
        #endif
    }

    func debug(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int) {
        guard let closure = closure() else { return }
        #if DEBUG
        print("\(dateString) 🔶 [\(String(path).split(separator: "/").last ?? ""):\(line)] \(String(describing: closure))")
        #endif
    }

    func info(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int) {
        guard let closure = closure() else { return }
        #if DEBUG
        print("\(dateString) 💚 [\(String(path).split(separator: "/").last ?? ""):\(line)] \(String(describing: closure))")
        #endif
    }

    func warning(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int) {
        guard let closure = closure() else { return }
        #if DEBUG
        print("\(dateString) ⚠️ [\(String(path).split(separator: "/").last ?? ""):\(line)] \(String(describing: closure))")
        #endif
    }

    func error(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int) {
        guard let closure = closure() else { return }
        #if DEBUG
        print("\(dateString) 💔 [\(String(path).split(separator: "/").last ?? ""):\(line)] \(String(describing: closure))")
        #endif
    }

    func severe(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int) {
        guard let closure = closure() else { return }
        #if DEBUG
        print("\(dateString) ☠️ [\(String(path).split(separator: "/").last ?? ""):\(line)] \(String(describing: closure))")
        #endif
    }

}
