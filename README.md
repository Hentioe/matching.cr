# matching

Iterate over destructuring fields, matching and assigning values.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     matching:
       github: Hentioe/matching.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "matching"

class Person
  property name : String
  property age : Int32
  property hobbies : Array(String)

  def initialize(@name, @age, @hobbies)
  end
end

p1 = Person.new("John", 18, ["Swimming"])
p2 = Person.new("Mary", 21, [] of String)

name : String? = nil

Matching.matching(p1, name: name, age: 18, hobbies: ["Swimming"])
pp name # => "John"

Matching.matching(p1, name: name, age: 21)
pp name # => nil

age : Int32? = nil

Matching.matching(p2, name: "Mary", age: age)
pp age # => 21
```

## Contributing

1. Fork it (<https://github.com/Hentioe/matching/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hentioe](https://github.com/Hentioe) - creator and maintainer
