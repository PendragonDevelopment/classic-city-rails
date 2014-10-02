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

### Class Methods

```ruby
Class Methods
Ruby is very flexible and as such it allows several ways to define a class method. The following is a sample of the most commonly used ways.

# Way 1
class Foo
  def self.bar
    puts 'class method'
  end
end

Foo.bar # "class method"

# Way 2
class Foo
  class << self
    def bar
      puts 'class method'
    end
  end
end

Foo.bar # "class method"

# Way 3
class Foo; end
def Foo.bar
  puts 'class method'
end

Foo.bar # "class method"
```

### Instance methods

Enough about class methods, lets move on. Instance methods are a bit more simple. Here are a few common ways that instance methods are defined.

```ruby
# Way 1
class Foo
  def baz
    puts 'instance method'
  end
end

Foo.new.baz # "instance method"

# Way 2
class Foo
  attr_accessor :baz
end

foo = Foo.new
foo.baz = 'instance method'
puts foo.baz

# Way 3
class Foo; end

foo = Foo.new
def foo.bar
  puts 'instance method'
end

Foo.new.baz # "instance method"
```

The key difference is instance methods only work with an instance and thus you have to create a new instance to use them (Foo.new). Again, there are more ways to define instance methods than this, especially if you look into meta programming.

### Resources:

- http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/
- http://rubymonk.com/learning/books/1-ruby-primer/chapters/35-modules/lessons/80-modules-as-namespaces

# RAILS!!!!!
## The main attraction! Finally!

- "Rails is a web application development framework written in the Ruby language. It is designed to make programming web applications easier by making assumptions about what every developer needs to get started. It allows you to write less code while accomplishing more than many other languages and frameworks. Experienced Rails developers also report that it makes web application development more fun."
- The Rails philosophy includes two major guiding principles:
    - Don't Repeat Yourself: DRY is a principle of software development which states that "Every piece of knowledge must have a single, unambiguous, authoritative representation within a system." By not writing the same information over and over again, our code is more maintainable, more extensible, and less buggy.
    - Convention Over Configuration: Rails has opinions about the best way to do many things in a web application, and defaults to this set of conventions, rather than require that you specify every minutiae through endless configuration files.

```
app/
bin/
config/
```