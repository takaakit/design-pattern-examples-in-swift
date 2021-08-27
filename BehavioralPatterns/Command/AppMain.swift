// ˅
import Cocoa

// ˄

public class AppMain: NSView {
    // ˅
    
    // ˄

    // Painting history
    private let history: HistoryCommand = HistoryCommand()

    @IBOutlet private weak var canvas: PaintingCanvas!
    // ˅
    
    // ˄

    public override func mouseDragged(with event: NSEvent) {
        // ˅
        let mousePoint = convert(event.locationInWindow, to: self.canvas)
        let paintingCommand: PaintingCommand = PaintingCommand(paintingObject: canvas, paintingPosX: Double(mousePoint.x), paintingPosY: Double(mousePoint.y))
        history.add(cmd: paintingCommand)
        paintingCommand.execute()
        // ˄
    }

    @IBAction public func pushUndoButton(_ sender: NSButton) {
        // ˅
        canvas.clear()
        history.undo()
        history.execute()
        // ˄
    }

    @IBAction public func pushClearButton(_ sender: NSButton) {
        // ˅
        canvas.clear()
        history.clear()
        // ˄
    }

    // ˅
    
    // ˄
}

// ˅

// ˄
