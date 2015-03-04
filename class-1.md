What are Primitives?

Basic, built-in data types for a programming language.

Ruby: objects, not primitives
Everything derives from object

- Constant
- String
- Integer (Fixnum)
- Float
- Boolean
- Array
- Hash
- Symbol

`h = {"hash?" => "yep, it\'s a hash!", "the answer to everything" => 42, :linux => "fun for coders."}`
`puts "Stringy string McString!".class`
`puts 1.class`
`puts nil.class`
`puts h.class`
`puts :symbol.class`

- Hash: unordered object-indexed collection of objects (key value pairs)
- Array when order matters, hash when label (key) matters

- Symbols: stored in memory once, strings stored many times
