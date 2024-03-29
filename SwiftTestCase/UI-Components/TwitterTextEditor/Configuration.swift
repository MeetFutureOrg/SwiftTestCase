//
//  Configuration.swift
//  TwitterTextEditor
//
//  Copyright 2021 Twitter, Inc.
//  SPDX-License-Identifier: Apache-2.0
//

import Foundation

/**
 Configuration class for logging, tracing, and debugging options.
 */
public final class Configuration {
    /**
     Shared configuration instance.
     Use this instance to configure this module.
     */
    public static let shared = Configuration()

    /**
      Logger for TwitterTextEditor module.
      Default to `nil`.
     */
    public var logger: Logger?

    /**
      Tracer for TwitterTextEditor module.
      Default to `nil`.
     */
    public var tracer: Tracer?

    /**
     Use short description for logging `NSAttributedString`.
     Default to `true`.
     */
    public var isAttributedStringShortDescriptionForLoggingEnabled: Bool = true
    /**
     A set of attribute names described in short description for `NSAttributedString`.
     Default to `nil`.
     */
    public var attributeNamesDescribedForAttributedStringShortDescription: Set<
        NSAttributedString
            .Key
    >?

    /**
     Enable debugging for `drawGlyphs(forGlyphRange:at:)`.
     Default to `false`.
     */
    public var isDebugLayoutManagerDrawGlyphsEnabled: Bool = false
}
