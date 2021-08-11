# UDPlaceholderTextView

[![Version](https://img.shields.io/cocoapods/v/UDPlaceholderTextView.svg?style=flat)](https://cocoapods.org/pods/UDPlaceholderTextView)
[![License](https://img.shields.io/cocoapods/l/UDPlaceholderTextView.svg?style=flat)](https://cocoapods.org/pods/UDPlaceholderTextView)
[![Platform](https://img.shields.io/cocoapods/p/UDPlaceholderTextView.svg?style=flat)](https://cocoapods.org/pods/UDPlaceholderTextView)

<img src='https://github.com/udbhateja/UDPlaceholderTextView/raw/master/Screenshots/1.png' alt='TUDPlaceholderTextView' width='300'>

<img src='https://github.com/udbhateja/UDPlaceholderTextView/raw/master/Screenshots/demo.gif' alt='UDPlaceholderTextView' width='600'>

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
-   iOS 9.0+
-   Swift 5+

## Installation

### Cocoapods
UDPlaceholderTextView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'UDPlaceholderTextView'
```

### Manually
Drag and drop the file `UDPlaceholderTextView.swift` into your project folder. Make sure **Copy Files** is checked and file is added to target.

## Usage

In case of **Cocoapods**
        
    import UDPlaceholderTextView

**1. Using Code**

    var textView: UDPlaceholderTextView!
    override func viewDidLoad() {
       super.viewDidLoad()
       // Do any additional setup after loading the view, typically from a nib.
       textView = UDPlaceholderTextView(frame: CGRect(x: 0, y: 0, width: 100.0, height: 100.0))
       textView.placeholder = "Please enter your comments"
       textView.placeholderColor = UIColor.red
    }

**2. Using Storyboard**

Drag a `UITextView` object in your ViewController. Change the class to `UDPlaceholderTextView` in Identity Inspector.

Refer screenshot below:
<img src='https://github.com/udbhateja/UDPlaceholderTextView/raw/master/Screenshots/IdentityInspector.png' alt='UDPlaceholderTextView' width='200'>

You can change the properties from Storyboard as well.
<img src='https://github.com/udbhateja/UDPlaceholderTextView/raw/master/Screenshots/IBInspectable.png' alt='UDPlaceholderTextView' width='200'>

In your code you can access the text normally like UITextView. All other UITextView properties and methods can be accessed normally.

    @IBOutlet weak var textView: UDPlaceholderTextView!
    let text = textView.text


### Properties

 - placeholder - Placeholder Text

       textView.placeholder = "Please enter your comments"
       
- placeholderColor - Color of the placeholder text.
             
      textView.placeholderColor = UIColor.red


## Contributions
I'd love to see you contributing to this project by proposing or adding features, reporting bugs, or spreading the word. Any help or contribution is appreciated. 

## Author

udbhateja, udaybhateja@ymail.com
https://bit.ly/udbhateja

## License

UDPlaceholderTextView is available under the MIT license. See the LICENSE file for more info.


