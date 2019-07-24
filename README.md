# DialogKit

DialogKit makes it simplier to build UIAlertControllers.

## Alert
```swift

let alert = DialogKit.alert(title: "This is a Title", message: "This is a message", completionHandler: { _ in
    print("Alert dismissed")
})

self.present(alert, animated: true, completion: nil)
```
