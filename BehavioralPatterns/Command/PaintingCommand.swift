// ˅

// ˄

// Command to paint a single point
public class PaintingCommand: Command {
    // ˅
    
    // ˄

    // Painting position x
    private let paintingPosX: Double

    // Painting position y
    private let paintingPosY: Double

    private let paintingTarget: PaintingTarget

    public init(paintingObject: PaintingTarget, paintingPosX: Double, paintingPosY: Double) {
        // ˅
        self.paintingTarget = paintingObject
        self.paintingPosX = paintingPosX
        self.paintingPosY = paintingPosY
        // ˄
    }

    public func execute() {
        // ˅
        paintingTarget.paint(x: paintingPosX, y: paintingPosY)
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
