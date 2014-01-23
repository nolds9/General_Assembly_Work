# Create a new Person object and store it in the variable `pj`. Print the following to the console / see what it returns in pry
# * What happens when I call pj.learn
# * What happens when I call pj.hello
# * What happens when I call pj.hello_again



class Person

def initialize(name)
  @name = name
end

def self.learn
  puts "I'm a class method"
  puts self
end

def learn
  puts "I'm an instance method"
  puts self
end

def hello
  self.learn
end

def hello_again
  learn
end

end

# Create a new Person object and store it in the variable `pj`. Print the following to the console / see what it returns in pry
pj = Person.new("pj")
=> #<Person:0x007fc943920798 @name="pj">


# * What happens when I call pj.learn
# says => I'm an instance method
        # #<Person:0x007fc943920798>

# * What happens when I call pj.hello =
# says => I'm an instance method
      # #<Person:0x007f85520fb8e0>

  # * What happens when I call pj.hello_again
#   says => I'm an instance method
# #<Person:0x007f85520fb8e0>

# Print the following to the console / see what it returns in pry
# * What happens when I call Person.learn
# * What happens when I call Person.hello
# * What happens when I call Person.hello_again

# Check out the parts [here](https://thenewcircle.com/bookshelf/ruby_tutorial/scope.html) on self for enrichment.

#-----------  Arrays, sorting & blocks

# For the following array, how would I...

# ```
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
# ```
# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)

more_animals = random_animals.map{ |animal| puts animal + "s" }
#when using map above you will get a new modified array

#OR
random_animals.each{ |animal| puts animal + "s"}

# * Return an array of the animals sorted alphabetically
puts random_animals.sort

# * Return an array of the animals sorted reverse alphabetically
puts random_animals.sort.reverse


# * Return an array of the animals with each individual string reversed
random_animals.reverse

# * Return an array of the animals sorted by word length (low to high)

random_animals.sort_by{|animal| animal.length}


# * Return an array of the animals sorted alphabetically by the last character in the string



random_animals_each { |animal| puts animal.reverse }


random_animals.sort_by {|animal| animal [-1]}
