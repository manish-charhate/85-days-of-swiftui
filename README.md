# 85-days-of-swiftui

Repository contains examples, projects and assignments from Paul Hudson's [100 days of SwiftUI](https://www.hackingwithswift.com/100/swiftui) starting from day 16

## Day 16

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


#### NavigationView:

- Use a NavigationView to create a navigation-based app in which the user can traverse a collection of views. Users navigate to a destination view by selecting a NavigationLink that you provide.
- Use function `navigationTitle(_ titleKey) on NavigationView to set navigation title
- By default, navigation title is shown with large font (same as largeTitle in UIKit). To set normal size title, call function navigationBarTitleDisplayMode with displayMode `.inline` on NavigationView.


#### @State - A property wrapper type that can read and write a value managed by SwiftUI.

- SwiftUI’s views are a function of their state. Means that the way your user interface looks – the things people can see and what they can interact with – are determined by the state of your program. For example, they can’t tap Continue until they have entered their name in a text field.
- `@State`: SwiftUI manages the storage of a property that you declare as state. When the value changes, SwiftUI updates the parts of the view hierarchy that depend on the value. Use state as the single source of truth for a given value stored in a view hierarchy.
A State instance isn’t the value itself; it’s a means of reading and writing the value.
- Properties marked with @State automatically watches for changes in the value.
- When an @State property changes SwiftUI re-invokes the body property (i.e., reloads UI)

#### Two-way binding ($)

- Swift differentiates between “show the value of this property here” and “show the value of this property here, but write any changes back to the property.”
- In the case of TextField example, Swift needs to make sure whatever is in the text is also in the name property, so that it can fulfill its promise that our views are a function of their state.
- This is what’s called a two-way binding: we bind the text field so that it shows the value of our property, but we also bind it so that any changes to the text field also update the property.
- In Swift, we mark these two-way bindings with a special symbol `$` so they stand out


#### Create several SwiftUI views inside a loop

- SwiftUI gives us a dedicated view type for this purpose, called ForEach. This can loop over arrays and ranges, creating as many views as needed. Even better, ForEach doesn’t get hit by the 10-view limit.
- ForEach will run a closure once for every item it loops over, passing in the current loop item.
- ForEach is particularly useful when working with SwiftUI’s `Picker` view, which lets us show various options for users to select from.

## Day 17

#### @FocusState

- A property wrapper type that can read and write a value that SwiftUI updates as the placement of focus within the scene changes.

#### Styles of Picker

- `Picker` view of SwiftUI can be used in different styles.
- To set/change the style, use `.pickerStyle(style: PickerStyle)` modifier.
  - `.segmented`: A picker style that presents the options as a group of radio buttons. Use this style when there are two to five options.
  - `.inline`: A PickerStyle where each option is displayed inline with other views in the current container.
  - `.wheel`: A picker style that presents the options in a scrollable wheel that shows the selected option and a few neighboring options.
  - `.navigationLink` (iOS 16): A picker style represented by a navigation link that presents the options by pushing a List-style picker view (On a separate screen).
  
#### Spacer

- Wherever you place a spacer it will automatically push other views to one side. That might mean pushing them up, down, left, or right depending on where it’s used


## Day 20

### background()

- To set background color to a view, use the background() modifier, which can be given required color
- The background() modifier can also accept materials. These apply a frosted glass effect over whatever comes below them, which allows us to create some beautiful depth effects. Ex - `.background(.ultraThinMaterial)`

### Color

- A representation of a color that adapts to a given context.
- Colors automatically take up all the space available, but you can also use the frame() modifier to ask for specific sizes.
- `vibrancy` - set `.foregroundStyle(.secondary)` to `Text` instead of `.foregroundColor(.secondary)` to add vibrancy effect to text.

### ignoresSafeArea()

- If you want your content to go under the safe area, you can use the .ignoresSafeArea() modifier to specify which screen edges you want to run up to, or specify nothing to automatically go edge to edge.

### Gradients

- `LinearGradient`: a linear gradient goes in one direction. Ex. LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
-  LinearGradient can also be provided with gradient stops, which let you specify both a color and how far along the gradient the color should be used. Ex 
```
LinearGradient(
 gradient: Gradient(
   stops: [
        Gradient.Stop(color: .white, location: 0.45),
        Gradient.Stop(color: .black, location: 0.55),
     ]
   ),
   startPoint: .top,
   endPoint: .bottom
 )
```
- `RadialGradient`: As an alternative, radial gradients move outward in a circle shape, so instead of specifying a direction we specify a start and end radius
```
RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
```

- `AngularGradient`: This cycles colors around a circle rather than radiating outward, and can create some beautiful effects.
```
AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
```
