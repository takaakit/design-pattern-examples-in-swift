// ˅
import Cocoa

// ˄

public class PaintingCanvas: NSImageView, PaintingTarget {
    // ˅
    
    // ˄

    private let paintingColor: NSColor = NSColor.blue

    // Radius of the painting point
    private let pointRadius: Double = 6.0

    private var drawingPoint: NSBezierPath = NSBezierPath()
    // ˅
    
    // ˄

    public required init?(coder: NSCoder) {
        // ˅
        super.init(coder: coder)
        // ˄
    }

    public func paint(x: Double, y: Double) {
        // ˅
        drawingPoint.lineWidth = CGFloat(pointRadius * 2)
        drawingPoint.lineCapStyle = NSBezierPath.LineCapStyle.round
        drawingPoint.lineJoinStyle = NSBezierPath.LineJoinStyle.round
        drawingPoint.move(to: CGPoint(x: x, y: y))
        drawingPoint.line(to: CGPoint(x: x, y: y))
        needsDisplay = true
        // ˄
    }

    public func clear() {
        // ˅
        self.window?.backgroundColor = NSColor.controlColor
        drawingPoint = NSBezierPath()
        needsDisplay = true
        // ˄
    }

    public override func draw(_ dirtyRect: NSRect) {
        // ˅
        paintingColor.set()
        drawingPoint.stroke()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
