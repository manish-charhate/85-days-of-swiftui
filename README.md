# 85-days-of-swiftui

Repository contains examples, projects and assignments from Paul Hudson's [100 days of SwiftUI](https://www.hackingwithswift.com/100/swiftui) starting from day 16

## Days 16-24

### Understanding the structure of SwiftUI app

#### Files:

- `WeSplitApp.swift` - An app that uses the SwiftUI app life cycle has a structure that conforms to the App protocol. The structure’s body property returns one or more scenes, which in turn provide content for display. The @main attribute identifies the app’s entry point.. If you want to create something at the app launch and want to keep it alive the entire time, then you should create it in this file.

- `ContentView.swift` - contains the initial user interface (UI) for your program. By default, SwiftUI view files declare two structures. The first structure conforms to the View protocol and describes the view’s content and layout. The second structure declares a preview for that view.

- `Assets.xcassets` - is an asset catalog

- `Preview Content` - is a group with Preview Assets.xcassets inside – this is another asset catalog, this time specifically for example images you want to use when you’re designing your user interfaces, to give you an idea of how they might look when the program is running.

#### Code:

- `struct ContentView: View` - creates a new struct called ContentView, saying that it conforms to the View protocol. View comes from SwiftUI, and is the basic protocol that must be adopted by anything you want to draw on the screen – all text, buttons, images, and more are all views, including your own layouts that combine other views.

-  `var body: some View` - defines a new computed property called body, which has an interesting type: some View. This means it will return something that conforms to the View protocol, which is our layout.

-  `View` protocol has only one requirement, which is that you have a computed property called body that returns some View. You can (and will) add more properties and methods to your view structs, but body is the only thing that’s mandatory.

- `Text("Hello, world!")` creates a text view using the string “Hello, world!” Text views are simple pieces of `static text` that get drawn onto the screen, and will automatically wrap across multiple lines as needed.

- `ContentView_Previews` struct conforms to the PreviewProvider protocol. This piece of code won’t actually form part of your final app that goes to the App Store, but is instead specifically for Xcode to use so it can show a preview of your UI design alongside your code.


#### Form:

- Forms are scrolling lists of static controls like text and images, but can also include user interactive controls like text fields, toggle switches, buttons, and more. You can create a basic form just by wrapping the view inside Form.
- You can have as many views inside a form as you want, although if you intend to add more than 10, SwiftUI requires that you place things in groups to avoid problems.

**Tip**: This limit of 10 children inside a parent applies everywhere in SwiftUI.

- If you wanted to have 11 things inside the form you should put some rows inside a **Group**
- Groups don’t actually change the way your user interface looks, they just let us work around SwiftUI’s limitation of ten child views inside a parent.
- If you want your form to look different when splitting items into chunks, you should use the **Section** view instead. This splits your form into discrete visual groups, just like the Settings app does.


