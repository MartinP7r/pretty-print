//
//  String+static.swift
//
//  Created by Pfundmair Martin on 2019-04-02.
//  Copyright © 2019 Disco Corporation. All rights reserved.
//

extension String {

    init(_ staticString: StaticString) {
        self = staticString.withUTF8Buffer {
            String(decoding: $0, as: UTF8.self)
        }
    }
}
