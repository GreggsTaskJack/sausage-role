Non-exhaustive list of things that should be refactored for production code:
- Proper routing
  - Using Navigator.push isn't scalable
- Separation into view model and view layers
- Better scoping of providers (goes hand-in-hand with navigation)
- Money should not be stored or manipulated as double
- (Minor) Should respect safe area
- Should add unit and widget tests
- Lots of repetitive code that could be factored out into methods, widgets
- Lots of magic numbers within the code

The following simplifying assumptions were made despite the fact that they would not be reasonable in real-world code
- It was always eat out and that 
- None of the API fields will ever return null