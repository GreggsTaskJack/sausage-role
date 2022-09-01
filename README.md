Non-exhaustive list of things that should be refactored for production code:
- Proper routing
  - Using Navigator.pop isn't scalable
- Separation into view model and view layers
- Better scoping of providers (goes hand-in-hand with navigation)
- Money should not be stored or manipulated as double

The following simplifying assumptions were made despite the fact that they would not be reasonable in real-world code
- It was always eat out and that 
- None of the API fields will ever return null