//
//  LogService.swift
//
//  Created by Martin Pfundmair on 2018-05-20.
//  Copyright © 2018 Martin Pfundmair. All rights reserved.
//

import Foundation

protocol Logger {
//    static func setup() -> Logger
    func verbose(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int)
    func debug(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int)
    func info(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int)
    func warning(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int)
    func error(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int)
    func severe(_ closure: @autoclosure () -> Any?, _ path: StaticString, _ function: StaticString, line: Int)
}

extension Logger {

    func verbose(_ closure: @autoclosure () -> Any?, _ path: StaticString? = #file, _ function: StaticString = #function, line: Int = #line) {
        verbose(closure(), path!, function, line: line)
    }

    func debug(_ closure: @autoclosure () -> Any?, _ path: StaticString? = #file, _ function: StaticString = #function, line: Int = #line) {
        debug(closure(), path!, function, line: line)
    }
    func info(_ closure: @autoclosure () -> Any?, _ path: StaticString? = #file, _ function: StaticString = #function, line: Int = #line) {
        info(closure(), path!, function, line: line)
    }
    func warning(_ closure: @autoclosure () -> Any?, _ path: StaticString? = #file, _ function: StaticString = #function, line: Int = #line) {
        warning(closure(), path!, function, line: line)
    }
    func error(_ closure: @autoclosure () -> Any?, _ path: StaticString? = #file, _ function: StaticString = #function, line: Int = #line) {
        error(closure(), path!, function, line: line)
    }
    func severe(_ closure: @autoclosure () -> Any?, _ path: StaticString? = #file, _ function: StaticString = #function, line: Int = #line) {
        severe(closure(), path!, function, line: line)
    }
}
