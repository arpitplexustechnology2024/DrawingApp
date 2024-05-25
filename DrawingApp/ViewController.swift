//
//  ViewController.swift
//  DrawingApp
//
//  Created by Arpit iOS Dev. on 22/05/24.
//

import UIKit
import PencilKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: PKCanvasView!
    var toolPicker: PKToolPicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        toolPicker = PKToolPicker()
                toolPicker.setVisible(true, forFirstResponder: canvasView)
                toolPicker.addObserver(canvasView)
                canvasView.becomeFirstResponder()
    }

    @IBAction func btnClearTapped(_ sender: UIBarButtonItem) {
        canvasView.drawing = PKDrawing()
    }
    
}

