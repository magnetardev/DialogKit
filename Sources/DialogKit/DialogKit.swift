import UIKit

public func DKAlert(title: String? = nil, message: String? = nil, completionHandler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: completionHandler))
    return alert
}

public func DKConfirm(title: String? = nil, message: String? = nil, completionHandler: ((UIAlertAction) -> Void)? = nil, cancelHandler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: cancelHandler))
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: completionHandler))
    return alert
}

public func DKPrompt(title: String? = nil, message: String? = nil, textFieldConfiguration: ((UITextField) -> Void)? = nil, completionHandler: ((UIAlertAction, UITextField) -> Void)? = nil, cancelHandler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
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

public func DKActionSheet(title: String? = nil, message: String? = nil, actions: [UIAlertAction]? = nil, cancelButton: Bool? = true, cancelHandler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    for action in actions ?? [] {
        alert.addAction(action)
    }
    if cancelButton != false {
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: cancelHandler))
    }
    return alert
}
