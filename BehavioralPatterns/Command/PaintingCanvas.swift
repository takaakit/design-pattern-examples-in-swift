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

    // Painting history
    private var history: HistoryCommand = HistoryCommand()
    // ˅
    
    // ˄

    public required init?(coder: NSCoder) {
        // ˅
        history = HistoryCommand()
        super.init(coder: coder)
        // ˄
    }

    public func paint(paintingPosX: Double, paintingPosY: Double) {
        // ˅
        drawingPoint.lineWidth = CGFloat(pointRadius * 2)
        drawingPoint.lineCapStyle = NSBezierPath.LineCapStyle.roundLineCapStyle
        drawingPoint.lineJoinStyle = NSBezierPath.LineJoinStyle.roundLineJoinStyle
        drawingPoint.move(to: CGPoint(x: paintingPosX, y: paintingPosY))
        drawingPoint.line(to: CGPoint(x: paintingPosX, y: paintingPosY))
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
