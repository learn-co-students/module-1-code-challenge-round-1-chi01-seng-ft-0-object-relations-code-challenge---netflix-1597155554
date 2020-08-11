# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Movie Instances
mov1 = Movie.new("Shawshank Redemption")
mov2 = Movie.new("Fight Club")
mov3 = Movie.new("Pineapple Express")
mov4 = Movie.new("Scott Pilgrim vs the World")

# Review Instances
r1 = Review.new("Rick", mov1, 5)
r2 = Review.new("Rick", mov2, 2)     # <-----v1 etc.. instead of the actual name was giving an error undifined local variable or method
r3 = Review.new("Morty", mov3, 5)   # <-------  so I just put a name as a string in for now.
r4 = Review.new("Beth", mov4, 4)
r5 = Review.new("Summer", mov4, 3)

# Viewer Instances
v1 = Viewer.new("Rick")
v2 = Viewer.new("Morty")
v3 = Viewer.new("Beth")
v4 = Viewer.new("Summer")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
puts "Schwifty"
