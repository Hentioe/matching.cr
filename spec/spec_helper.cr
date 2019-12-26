require "spec"
require "../src/matching"

class Person
  property name : String
  property age : Int32
  property hobbies : Array(String)

  def initialize(@name, @age, @hobbies)
  end
end
