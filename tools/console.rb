# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#movie instances :title 
m1=Movie.new("Mad Max")
m2=Movie.new("Holes")
m3=Movie.new("Honey Boy")

#viewer instances :username 
v1=Viewer.new("KewlKid")
v2=Viewer.new("101 Movie Viewer")

#review instances :viewer, movie, rating)
r1=Review.new(v1, m1, "5/5")

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
