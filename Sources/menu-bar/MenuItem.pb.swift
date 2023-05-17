// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: MenuItem.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// protoc --swift_out=. MenuItem.proto

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct MenuItemList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var items: [MenuItem] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct MenuItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var pathIndices: String = String()

  var shortcut: String = String()

  var path: [String] = []

  var searchPath: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct AppFilter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var app: String = String()

  var ignoreMenuPaths: [MenuPath] = []

  var showDisabledMenuItems: Bool = false

  var showAppleMenu: Bool = false

  var cacheDuration: Double = 0

  var disabled: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct MenuPath {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension MenuItemList: @unchecked Sendable {}
extension MenuItem: @unchecked Sendable {}
extension AppFilter: @unchecked Sendable {}
extension MenuPath: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension MenuItemList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "MenuItemList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "items"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.items) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.items.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.items, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: MenuItemList, rhs: MenuItemList) -> Bool {
    if lhs.items != rhs.items {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension MenuItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "MenuItem"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pathIndices"),
    2: .same(proto: "shortcut"),
    3: .same(proto: "path"),
    4: .same(proto: "searchPath"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.pathIndices) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.shortcut) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.path) }()
      case 4: try { try decoder.decodeRepeatedStringField(value: &self.searchPath) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.pathIndices.isEmpty {
      try visitor.visitSingularStringField(value: self.pathIndices, fieldNumber: 1)
    }
    if !self.shortcut.isEmpty {
      try visitor.visitSingularStringField(value: self.shortcut, fieldNumber: 2)
    }
    if !self.path.isEmpty {
      try visitor.visitRepeatedStringField(value: self.path, fieldNumber: 3)
    }
    if !self.searchPath.isEmpty {
      try visitor.visitRepeatedStringField(value: self.searchPath, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: MenuItem, rhs: MenuItem) -> Bool {
    if lhs.pathIndices != rhs.pathIndices {return false}
    if lhs.shortcut != rhs.shortcut {return false}
    if lhs.path != rhs.path {return false}
    if lhs.searchPath != rhs.searchPath {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension AppFilter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "AppFilter"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "app"),
    2: .same(proto: "ignoreMenuPaths"),
    3: .same(proto: "showDisabledMenuItems"),
    4: .same(proto: "showAppleMenu"),
    5: .same(proto: "cacheDuration"),
    6: .same(proto: "disabled"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.app) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.ignoreMenuPaths) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.showDisabledMenuItems) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.showAppleMenu) }()
      case 5: try { try decoder.decodeSingularDoubleField(value: &self.cacheDuration) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.disabled) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.app.isEmpty {
      try visitor.visitSingularStringField(value: self.app, fieldNumber: 1)
    }
    if !self.ignoreMenuPaths.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.ignoreMenuPaths, fieldNumber: 2)
    }
    if self.showDisabledMenuItems != false {
      try visitor.visitSingularBoolField(value: self.showDisabledMenuItems, fieldNumber: 3)
    }
    if self.showAppleMenu != false {
      try visitor.visitSingularBoolField(value: self.showAppleMenu, fieldNumber: 4)
    }
    if self.cacheDuration != 0 {
      try visitor.visitSingularDoubleField(value: self.cacheDuration, fieldNumber: 5)
    }
    if self.disabled != false {
      try visitor.visitSingularBoolField(value: self.disabled, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: AppFilter, rhs: AppFilter) -> Bool {
    if lhs.app != rhs.app {return false}
    if lhs.ignoreMenuPaths != rhs.ignoreMenuPaths {return false}
    if lhs.showDisabledMenuItems != rhs.showDisabledMenuItems {return false}
    if lhs.showAppleMenu != rhs.showAppleMenu {return false}
    if lhs.cacheDuration != rhs.cacheDuration {return false}
    if lhs.disabled != rhs.disabled {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension MenuPath: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "MenuPath"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.path) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitRepeatedStringField(value: self.path, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: MenuPath, rhs: MenuPath) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
