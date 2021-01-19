
[![Language](https://img.shields.io/badge/swift-4.0-green.svg)](http://swift.org)

Pager is the simplest and best way to implement sliding view controllers.

## Installation
Drop in the Spring folder to your Xcode project.

Or via CocoaPods pre-release:
```CocoaPods
platform :ios, '8.0'
pod 'Pager'
use_frameworks!
```

## Usage

Subclass PagerController (as it's a `UIViewController` subclass) and implement data source methods in the subclass.

#### Usage with Code

```Swift
override func viewDidLoad() {
	super.viewDidLoad()
	self.dataSource = self
}
```
## Data Source

```Swift
func numberOfTabs(pager: PagerController) -> Int
func tabViewForIndex(index: Int, pager: PagerController) -> UIView
optional func viewForTabAtIndex(index: Int, pager: PagerController) -> UIView
optional func controllerForTabAtIndex(index: Int, pager: PagerController) -> UIViewController
```

## Delegate
```Swift
optional func didChangeTabToIndex(pager: PagerController, index: Int)
optional func didChangeTabToIndex(pager: PagerController, index: Int, previousIndex: Int)
optional func didChangeTabToIndex(pager: PagerController, index: Int, previousIndex: Int, swipe: Bool)
```

## Contact
- [Lucas Farah](mailto:lucas.farah@me.com) - [@7farah7](http://twitter.com/7farah7)
- [Lucas Martins](mailto:lucoceano@gmail.com) - [lucoceano.com](http://www.lucoceano.com)

Pager is a port from [CKViewPager](https://github.com/lucoceano/CKViewPager) to swift.

## Licence
Pager is MIT licensed. See the LICENCE file for more info.
