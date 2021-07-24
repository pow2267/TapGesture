//
//  ViewController.swift
//  TapGesture
//
//  Created by kwon on 2021/07/25.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // #2 .addGestureRecognizer메서드로 연결하는 방법
//        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tapView(_:)))
//
//        self.view.addGestureRecognizer(tapGesture)
        
        // #3 delegate를 직접 지정해주고 해당 액션을 받아서 처리해주는 방법 (가장 다양한 활용이 가능)
        // UIGestureRecognizerDelegate 채택해야 함
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer()
        tapGesture.delegate = self
        self.view.addGestureRecognizer(tapGesture)
    }

    // #1 @IBAction으로 직접 tap gesture recognizer와 연결하는 방법
    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

