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

## Classes

Object Oriented Programming 101:

- "In object-oriented programming, a class is a construct that is used to create instances of itself – referred to as class instances, class objects, instance objects or simply objects. A class defines constituent members which enable its instances to have state and behavior."

```ruby
class Foo
  def self.bar
    puts 'class method'
  end

  def baz
    puts 'instance method'
  end
end

Foo.bar # => "class method"
Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.baz # => instance method
Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>
```