//
//  OP_NOPN.swift
//
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

struct OpNop1: OpCodeProtocol {
    var value: UInt8 { return 0xb0 }
    var name: String { return "OP_NOP1" }
}

struct OpNop4: OpCodeProtocol {
    var value: UInt8 { return 0xb3 }
    var name: String { return "OP_NOP4" }
}

struct OpNop5: OpCodeProtocol {
    var value: UInt8 { return 0xb4 }
    var name: String { return "OP_NOP5" }
}

struct OpNop6: OpCodeProtocol {
    var value: UInt8 { return 0xb5 }
    var name: String { return "OP_NOP6" }
}

struct OpNop7: OpCodeProtocol {
    var value: UInt8 { return 0xb6 }
    var name: String { return "OP_NOP8" }
}

struct OpNop8: OpCodeProtocol {
    var value: UInt8 { return 0xb7 }
    var name: String { return "OP_NOP8" }
}

struct OpNop9: OpCodeProtocol {
    var value: UInt8 { return 0xb8 }
    var name: String { return "OP_NOP9" }
}

struct OpNop10: OpCodeProtocol {
    var value: UInt8 { return 0xb9 }
    var name: String { return "OP_NOP10" }
}
