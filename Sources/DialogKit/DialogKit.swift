import UIKit

public func DKAlert(title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)?) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: completionHandler))
    return alert
}

public func DKConfirm(title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)?, cancelHandler: ((UIAlertAction) -> Void)?) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: cancelHandler))
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: completionHandler))
    return alert
}

public func DKPrompt(title: String?, message: String?, textFieldConfiguration: ((UITextField) -> Void)?, completionHandler: ((UIAlertAction, UITextField) -> Void)?, cancelHandler: ((UIAlertAction) -> Void)?) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: cancelHandler))
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { alertView in
        if completionHandler != nil {
            completionHandler!(alertView, alert.textFields![0])
        }
    }))
    
    alert.addTextField(configurationHandler: textFieldConfiguration)
    return alert
}

public func DKActionSheet(title: String?, message: String?, actions: [UIAlertAction]?, cancelButton: Bool? = true, cancelHandler: ((UIAlertAction) -> Void)?) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    for action in actions ?? [] {
        alert.addAction(action)
    }
    if cancelButton != false {
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: cancelHandler))
    }
    return alert
}
