# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Fast&Furious")
m2 = Movie.new("The Dark Knight")
m3 = Movie.new("Inception")
m4 = Movie.new("Godfather")

v1 = Viewer.new("movielover")
v2 = Viewer.new("bestinmovies")
v3 = Viewer.new("godmother")
v4 = Viewer.new("johnyjohny")

r1 = Review.new(v3, m1, 8)
r2 = Review.new(v2, m2, 9)
r3 = Review.new(v1, m1, 7)
r4 = Review.new(v4, m4, 10)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
