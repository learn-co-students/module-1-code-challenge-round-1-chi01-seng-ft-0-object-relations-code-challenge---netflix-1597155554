# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Interstellar")
m2 = Movie.new("Avatar")
m3 = Movie.new("Parasite")
m4 = Movie.new("The Godfather")
m5 = Movie.new("Matrix")

v1 = Viewer.new("username1")
v2 = Viewer.new("username2")
v3 = Viewer.new("username3")
v4 = Viewer.new("username4")
v5 = Viewer.new("username5")

r1 = Review.new(v1, m1, 5)
r2 = Review.new(v2, m1, 7)
r3 = Review.new(v3, m2, 1)
r4 = Review.new(v1, m5, 10)
r5 = Review.new(v5, m4, 8)
r6 = Review.new(v4, m4, 2)
r7 = Review.new(v1, m1, 5)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
