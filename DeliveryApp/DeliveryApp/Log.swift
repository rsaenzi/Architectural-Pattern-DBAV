//
//  Log.swift
//  DeliveryApp
//
//  Created by Rigoberto Sáenz Imbacuán on 2/26/17.
//  Copyright © 2017 Rigoberto Sáenz Imbacuán. All rights reserved.
//

import UIKit

enum LogLevel: Int {
    case none = 0
    case error
    case warning
    case info
    case debug // All
}

class Log {
    

    
    private var level: LogLevel = LogLevel.none
    
    private let contentNone    = ("", "")
    private let contentError   = ("❌", "Error")
    private let contentWarning = ("⚠️", "Warning")
    private let contentInfo    = ("🍀", "Info")
    private let contentDebug   = ("🌀", "Debug")
    
    
    func set(logLevel: LogLevel) {
        self.level = logLevel
    }
    
    
    func debug(_ closure: @autoclosure () -> Any?, functionName: String = #function, fileName: String = #file, lineNumber: Int = #line) {
        printLog(.debug, fileName, functionName, lineNumber, closure)
    }
    
    func info(_ closure: @autoclosure () -> Any?, functionName: String = #function, fileName: String = #file, lineNumber: Int = #line) {
        printLog(.info, fileName, functionName, lineNumber, closure)
    }
    
    func warning(_ closure: @autoclosure () -> Any?, functionName: String = #function, fileName: String = #file, lineNumber: Int = #line) {
        printLog(.warning, fileName, functionName, lineNumber, closure)
    }
    
    func error(_ closure: @autoclosure () -> Any?, functionName: String = #function, fileName: String = #file, lineNumber: Int = #line) {
        printLog(.error, fileName, functionName, lineNumber, closure)
    }
    
    
    
    private func printLog(_ logLevel: LogLevel, _ fileName: String = #file, _ functionName: String = #function, _ lineNumber: Int = #line, _ closure: () -> Any?) {
        
        if logLevel.rawValue <= self.level.rawValue,
            let contentToLog = closure() {
            
            var content: (icon: String, typeName: String) = contentNone
            
            switch logLevel {
            case .error:   content = contentError
            case .warning: content = contentWarning
            case .info:    content = contentInfo
            case .debug:   content = contentDebug
            case .none:    break
            }
            
            // Remove parameter part of function name
            var function: String = functionName
            if let leftParenthesisPosition = functionName.characters.index(of: "(") {
                function = functionName.substring(to: leftParenthesisPosition)
            }
            
            var file: String = fileName.replacingOccurrences(of: " ", with: "")
            if let lastPath: String = NSURL(string: fileName)?.lastPathComponent {
                file = lastPath
            }
            
            let time:   String = getCurrentTime()
            let header: String = "\n\(content.icon) [\(content.typeName)] [\(file) > \(function)() > Line \(lineNumber)] [\(time)]"
            
            print(header)
            print(contentToLog)
        }
    }
    
    
    private func getCurrentTime() -> String {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .long
        
        let result: String = formatter.string(from: Date())
        return result
    }
    
    // Singleton
    static let shared = Log()
    private init() {}
}
