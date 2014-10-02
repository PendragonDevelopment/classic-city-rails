## Modules and classes

- Modules provide a namespace and prevent name clashes.
- Module constants are named just like class constants, with an initial uppercase letter. The method definitions look similar, too: these module methods are defined just like class methods.
- If a different program wants to use these modules, it can simply load up the module file (using the Ruby require statement) and reference the qualified names.

```ruby
require "trig"
require "action"
```