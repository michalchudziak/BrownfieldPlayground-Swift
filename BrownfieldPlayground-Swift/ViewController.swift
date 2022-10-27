import UIKit
import React

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        if let bridge = BridgeManager.shared.bridge {
            view = RCTRootView(
                bridge: bridge,
                moduleName: "MyReactComponent",
                initialProperties: ["text": "Hello world!"]
            )
        }
    }
}

