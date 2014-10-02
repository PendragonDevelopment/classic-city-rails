## Modules and classes

- Modules provide a namespace and prevent name clashes.
- Module constants are named just like class constants, with an initial uppercase letter. The method definitions look similar, too: these module methods are defined just like class methods.
- If a different program wants to use these modules, it can simply load up the module file (using the Ruby require statement) and reference the qualified names.

```ruby
require "trig"
require "action"
```

- Modules have another, wonderful use, providing a facility called a mixin.

```ruby

module Debug
  def whoAmI?
    "#{self.type.name} (\##{self.id}): #{self.to_s}"
  end
end
class Phonograph
  include Debug
  # ...
end
class EightTrack
  include Debug
  # ...
end
ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")
ph.whoAmI?  »   "Phonograph (#537766170): West End Blues"
et.whoAmI?  »   "EightTrack (#537765860): Surrealistic Pillow"
```