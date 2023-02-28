import SwiftUI
@available(iOS 16.0, *)
@objc(ResizableSheetViewManager)
class ResizableSheetViewManager: RCTViewManager, UISheetPresentationControllerDelegate {
    


    override func view() -> UIView! {
        if let window = UIApplication.shared.windows.first {
            if let rootViewController = window.rootViewController {
                // Do something with the root view controller
                
                
                let myViewController = UIViewController()
                // Customize the view controller as needed
                myViewController.view.backgroundColor = UIColor.green
                myViewController.title = "My Sheet"
                myViewController.modalPresentationStyle = .pageSheet
    
                
                let sheetPresentationController = myViewController.presentationController as? UISheetPresentationController
                sheetPresentationController?.delegate = self // set delegate if necessary
                sheetPresentationController?.detents = [.medium(), .large(), .custom(resolver: { context in
                    return 200
                })];
                sheetPresentationController?.prefersGrabberVisible = true;
                
                

                
                rootViewController.present(myViewController, animated: true)
            }
        }
        
        
        
        
        
        return UIView()
    }
    @objc func toggleSheet() {
        
        
        

        
        
        
    }

  @objc override static func requiresMainQueueSetup() -> Bool {
    return true
  }
}




