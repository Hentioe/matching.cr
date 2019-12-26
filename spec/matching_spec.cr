require "./spec_helper"

describe Matching do
  it "matching" do
    p1 = Person.new("John", 18, ["Swimming"])
    p2 = Person.new("Mary", 21, [] of String)

    name : String? = nil

    Matching.matching(p1, name: name, age: 18, hobbies: ["Swimming"])
    name.not_nil!.should eq("John")
    Matching.matching(p1, name: name, age: 21)
    name.should be_nil

    age : Int32? = nil

    Matching.matching(p2, name: "Mary", age: age)
    age.not_nil!.should eq(21)
  end
end
