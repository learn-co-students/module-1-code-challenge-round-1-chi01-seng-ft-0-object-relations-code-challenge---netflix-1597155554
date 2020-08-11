# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movie class
titanic = Movie.new("Titanic")
fifth_element = Movie.new("Fifth Element")
godfather = Movie.new("Godfather")
avatar = Movie.new("Avatar")


#viewer class
david = Viewer.new("Giggles")
alan = Viewer.new("Cereal Killer")
tom = Viewer.new("Override")
chris = Viewer.new("Gonzo")




#review class
r1 = Review.new(david, fifth_element, 10)
r2 = Review.new(alan, titanic, 6)
r3 = Review.new(tom, godfather, 9)
r4 = Review.new(chris, avatar, 7)
r5 = Review.new(david, godfather, 9)
r6 = Review.new(chris, fifth_element, 7)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
