//
//  Extensions.swift
//  
//
//  Created by 이웅재 on 2021/10/12.
//

import SwiftUI

extension ExpandableText {
    public func font(_ font: Font) -> ExpandableText {
        var result = self
        
        if #available(iOS 14.0, *) {
            switch font {
            case .largeTitle:
                result.uiFont = UIFont.preferredFont(forTextStyle: .largeTitle)
            case .title:
                result.uiFont = UIFont.preferredFont(forTextStyle: .title1)
            case .title2:
                result.uiFont = UIFont.preferredFont(forTextStyle: .title2)
            case .title3:
                result.uiFont = UIFont.preferredFont(forTextStyle: .title3)
            case .headline:
                result.uiFont = UIFont.preferredFont(forTextStyle: .headline)
            case .subheadline:
                result.uiFont = UIFont.preferredFont(forTextStyle: .subheadline)
            case .callout:
                result.uiFont = UIFont.preferredFont(forTextStyle: .callout)
            case .caption:
                result.uiFont = UIFont.preferredFont(forTextStyle: .caption1)
            case .caption2:
                result.uiFont = UIFont.preferredFont(forTextStyle: .caption2)
            case .footnote:
                result.uiFont = UIFont.preferredFont(forTextStyle: .footnote)
            case .body:
                result.uiFont = UIFont.preferredFont(forTextStyle: .body)
            default:
                result.uiFont = UIFont.preferredFont(forTextStyle: .body)
            }
        } else {
            switch font {
            case .largeTitle:
                result.uiFont = UIFont.preferredFont(forTextStyle: .largeTitle)
            case .title:
                result.uiFont = UIFont.preferredFont(forTextStyle: .title1)
//            case .title2:
//                result.uiFont = UIFont.preferredFont(forTextStyle: .title2)
//            case .title3:
//                result.uiFont = UIFont.preferredFont(forTextStyle: .title3)
            case .headline:
                result.uiFont = UIFont.preferredFont(forTextStyle: .headline)
            case .subheadline:
                result.uiFont = UIFont.preferredFont(forTextStyle: .subheadline)
            case .callout:
                result.uiFont = UIFont.preferredFont(forTextStyle: .callout)
            case .caption:
                result.uiFont = UIFont.preferredFont(forTextStyle: .caption1)
//            case .caption2:
//                result.uiFont = UIFont.preferredFont(forTextStyle: .caption2)
            case .footnote:
                result.uiFont = UIFont.preferredFont(forTextStyle: .footnote)
            case .body:
                result.uiFont = UIFont.preferredFont(forTextStyle: .body)
            default:
                result.uiFont = UIFont.preferredFont(forTextStyle: .body)
            }
        }
        result.font = font
        
        return result
    }
    public func lineLimit(_ lineLimit: Int) -> ExpandableText {
        var result = self
        
        result.lineLimit = lineLimit
        return result
    }
    
    public func foregroundColor(_ color: Color) -> ExpandableText {
        var result = self
        
        result.foregroundColor = color
        return result
    }
    
    public func expandButtonText(_ text: String) -> ExpandableText {
        var result = self
        
        result.expandButtonText = text
        return result
    }
    public func expandButtonColor(_ color: Color) -> ExpandableText {
        var result = self
        
        result.expandButtonColor = color
        return result
    }
}

extension String {
    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }
    
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
