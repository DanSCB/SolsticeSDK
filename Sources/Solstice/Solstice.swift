//
//  Strangle.swift
//
//  Created by Danny Schnabel on 2022-06-17.
//
import SwiftUI

@available(iOS 13.0, *)
public struct SlantText: View {
    let theText: String
    @Binding var angle: Double
    
    public init(theText: String, angle: Binding<Double>) {
        self.theText = theText
        self._angle = angle
    }
    
    public var body: some View {
        Text(theText)
            .fontWeight(Font.Weight.bold)
            .font(Font.largeTitle)
            .padding()
            .rotationEffect(Angle.degrees(angle))
    }
}
