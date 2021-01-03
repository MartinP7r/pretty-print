import XCTest

import PrettyPrintTests

var tests = [XCTestCaseEntry]()
tests += PrettyPrintTests.allTests()
XCTMain(tests)
