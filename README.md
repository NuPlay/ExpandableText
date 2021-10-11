<h1 align="center"> ExpandableText 😎 (SwiftUI)</p>
<p align="center">
    <a href="https://github.com/NuPlay/ExpandableText/releases/latest">
        <img src="https://img.shields.io/github/v/release/NuPlay/ExpandableText?label=version&labelColor=303840" alt="version">
    </a>
    <a href="https://swift.org/">
        <img src="https://img.shields.io/badge/Swift-5.1+-F05138?labelColor=303840" alt="Swift: 5.1+">
    </a>
    <a href="https://www.apple.com/ios/">
        <img src="https://img.shields.io/badge/iOS-13.0+-007AFF?labelColor=303840" alt="iOS: 13.0+">
    </a>
    <a href="/LICENSE">
        <img src="https://img.shields.io/github/license/NuPlay/ExpandableText?color=blue&labelColor=303840" alt="license">        
</p>
<h3 align="center"> Expand the text with the "more" button </h3>
<h3 align="center"> <img src="https://user-images.githubusercontent.com/73557895/136821265-80941d7f-0942-49dc-907f-e31f1548d23e.gif" alt="example"/> </h3>



## Get Started

```swift
import SwiftUI
import ExpandableText

struct ExpandableText_Test: View {
    
    var body: some View {
        ExpandableText(text: "Do you think you're living an ordinary life? You are so mistaken it's difficult to even explain. The mere fact that you exist makes you extraordinary. The odds of you existing are less than winning the lottery, but here you are. Are you going to let this extraordinary opportunity pass?")
            .font(.body)//optional
            .foregroundColor(.primary)//optional
            .lineLimit(3)//optional
            .animation(.easeOut)//optional
            .padding(.horizontal, 24)//optional
    }
}
```

## Modifier(optional)

Modifier | Default
--- | ---
`.font(_ font: Font)` | `.body`
`.lineLimit(_ lineLimit: Int)` | `3`
`.foregroundColor(_ color: Color)` | `.primary`
`.expandButtonText(_ text: String)` | `"more"`
`.expandButtonColor(_ color: Color)` | `.blue`



