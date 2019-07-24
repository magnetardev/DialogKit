# DialogKit

DialogKit makes it simplier to build UIAlertControllers.

## Installation
Install via the Swift Package Manager using this URL:
```
https://github.com/magnetardev/DialogKit.git
```

In the files that you want to use it in, simply use:
```swift
import DialogKit
```
## Functions

### Alert
A simple alert.

#### Definition

```swift
static func alert(title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)?) -> UIAlertController
```

#### Example Usage
```swift
let alert = DialogKit.alert(title: "This is a Title", message: "This is a message", completionHandler: { _ in
    print("Alert dismissed")
})

self.present(alert, animated: true, completion: nil)
```
---

### Confirm
A simple confirmation dialog.

#### Definition

```swift
static func confirm(title: String?, message: String?, completionHandler: ((UIAlertAction) -> Void)?, cancelHandler: ((UIAlertAction) -> Void)?) -> UIAlertController
```

#### Example Usage
```swift
let alert = DialogKit.confirm(title: "This is a question?", message: "Are you sure?", completionHandler: { _ in
    print("You tapped OK.")
}, cancelHandler: { _ in
    print("You cancelled it.")
})

self.present(alert, animated: true, completion: nil)
```

---
### Prompt
A simple prompt.

#### Definition

```swift
static func prompt(title: String?, message: String?, textFieldConfiguration: ((UITextField) -> Void)?, completionHandler: ((UIAlertAction, UITextField) -> Void)?, cancelHandler: ((UIAlertAction) -> Void)?) -> UIAlertController
```

#### Example Usage
```swift
let alert = DialogKit.prompt(
    title: "This is a question?", 
    message: "But you have to type the answer 😳", 
    textFieldConfiguration: { textField in
        textField.placeholder = "This is a placeholder. Mental."
    }, 
    completionHandler: { _, textField in
        print("The answer was the friends we made along the way, but you said \(textField.text)")
    }, 
    cancelHandler: nil
)

self.present(alert, animated: true, completion: nil)
```

---
### Action Sheet
A simple action sheet.

#### Definition

```swift
static func actionSheet(title: String?, message: String?, actions: [UIAlertAction]?, cancelButton: Bool? = true, cancelHandler: ((UIAlertAction) -> Void)?) -> UIAlertController
```

#### Example Usage
```swift
let alert = DialogKit.actionSheet(
    title: "This is an action sheet.",
    message: nil, 
    actions: [
        UIAlertAction(title: "Button 1", style: .default, handler: nil), 
        UIAlertAction(title: "Button 2 (Very dangerous)", style: .destructive, handler: nil)
    ],
    cancelButton: nil,
    cancelHandler: nil
)

alert.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
self.present(alert, animated: true, completion: nil)
```
