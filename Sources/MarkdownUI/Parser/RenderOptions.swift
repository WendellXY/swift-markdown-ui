//
//  DownOptions.swift
//  Down
//
//  Created by Rob Phillips on 5/28/16.
//  Copyright © 2016-2019 Down. All rights reserved.
//
//  original typename: DownOptions

import Foundation
@_implementationOnly import cmark_gfm

public struct RenderOptions: OptionSet {

    // MARK: - Properties

    public let rawValue: Int32

    // MARK: - Life cycle

    public init(rawValue: Int32) { self.rawValue = rawValue }

    /// Default options.

    public static let `default` = RenderOptions(rawValue: CMARK_OPT_DEFAULT)

    // MARK: - Rendering Options

    /// Include a `data-sourcepos` attribute on all block elements.

    public static let sourcePos = RenderOptions(rawValue: CMARK_OPT_SOURCEPOS)

    /// Render `softbreak` elements as hard line breaks.

    public static let hardBreaks = RenderOptions(rawValue: CMARK_OPT_HARDBREAKS)

    /// Suppress raw HTML and unsafe links (`javascript:`, `vbscript:`,
    /// `file:`, and `data:`, except for `image/png`, `image/gif`,
    /// `image/jpeg`, or `image/webp` mime types).  Raw HTML is replaced
    /// by a placeholder HTML comment. Unsafe links are replaced by
    /// empty strings.
    ///
    /// Note: this is the default option as of cmark v0.29.0. Use `unsafe`
    ///       to disable this behavior.

    public static let safe = RenderOptions(rawValue: CMARK_OPT_SAFE)

    /// Render raw HTML and unsafe links (`javascript:`, `vbscript:`,
    /// `file:`, and `data:`, except for `image/png`, `image/gif`,
    /// `image/jpeg`, or `image/webp` mime types).  By default,
    /// raw HTML is replaced by a placeholder HTML comment. Unsafe
    /// links are replaced by empty strings.
    ///
    /// Note: `safe` is the default as of cmark v0.29.0

    public static let unsafe = RenderOptions(rawValue: CMARK_OPT_UNSAFE)

    // MARK: - Parsing Options

    /// Normalize tree by consolidating adjacent text nodes.

    public static let normalize = RenderOptions(rawValue: CMARK_OPT_NORMALIZE)

    /// Validate UTF-8 in the input before parsing, replacing illegal
    /// sequences with the replacement character U+FFFD.

    public static let validateUTF8 = RenderOptions(rawValue: CMARK_OPT_VALIDATE_UTF8)

    /// Convert straight quotes to curly, --- to em dashes, -- to en dashes.

    public static let smart = RenderOptions(rawValue: CMARK_OPT_SMART)

    // MARK: - Combo Options

    /// Combines 'unsafe' and 'smart' to render raw HTML and produce smart typography.

    public static let smartUnsafe = RenderOptions(rawValue: CMARK_OPT_SMART + CMARK_OPT_UNSAFE)

}
