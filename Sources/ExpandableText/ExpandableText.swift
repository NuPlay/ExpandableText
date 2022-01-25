//
// ExpandableText.swift
//
//
//  Created by 이웅재 on 2021/10/12.
//

import SwiftUI

public struct ExpandableText: View {
    var text : String
    
    var font: Font = .body
    var lineLimit: Int = 3
    var foregroundColor: Color = .primary

    var expandButtonText: String = "more"
    var expandButtonColor: Color = .blue
    var uiFont: UIFont = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
    var animation: Animation? = .none
    
    @State private var expand : Bool = false
    @State private var truncated : Bool = false
    @State private var fullSize: CGFloat = 0
    
    public init(text: String) {
        self.text = text
    }
    public var body: some View {
        ZStack(alignment: .bottomTrailing){
            Text(text)
                .font(font)
                .foregroundColor(foregroundColor)
                .lineLimit(expand == true ? nil : lineLimit)
                .animation(animation, value: expand)
                .mask(
                    VStack(spacing: 0){
                        Rectangle()
                            .foregroundColor(.black)
                        
                        HStack(spacing: 0){
                            Rectangle()
                                .foregroundColor(.black)
                            if !expand && truncated{
                                HStack(alignment: .bottom,spacing: 0){
                                    LinearGradient(
                                        gradient: Gradient(stops: [
                                            Gradient.Stop(color: .black, location: 0),
                                            Gradient.Stop(color: .clear, location: 0.8)]),
                                        startPoint: .leading,
                                        endPoint: .trailing)
                                        .frame(width: 32, height: expandButtonText.heightOfString(usingFont: uiFont))
                                    
                                    Rectangle()
                                        .foregroundColor(.clear)
                                        .frame(width: expandButtonText.widthOfString(usingFont: uiFont), alignment: .center)
                                }
                            }
                        }
                        .frame(height: expandButtonText.heightOfString(usingFont: uiFont))
                    }
                )
            
            if truncated && !expand {
                Button(action: {
                    self.expand = true
                }, label: {
                    Text(expandButtonText)
                        .font(font)
                        .foregroundColor(expandButtonColor)
                })
            }
        }
        .background(
            ZStack{
            if !truncated {
                    if fullSize != 0 {
                        Text(text)
                            .lineLimit(lineLimit)
                            .background(
                                GeometryReader { geo in
                                    Color.clear
                                        .onAppear {
                                            if fullSize > geo.size.height {
                                                self.truncated = true
                                                print(geo.size.height)
                                                
                                            }
                                        }
                                }
                            )
                    }
                    
                    Text(text)
                        .lineLimit(999)
                        .fixedSize(horizontal: false, vertical: true)
                        .background(GeometryReader { geo in
                            Color.clear
                                .onAppear() {
                                    self.fullSize = geo.size.height
                                }
                        })
                }
            }
                .hidden()
        )
    }
}
