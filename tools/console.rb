# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Black Panther")
m2 = Movie.new("Ant-Man")
m3 = Movie.new("Thor")
m4 = Movie.new("Iron Man")
m5 = Movie.new("Captain America")

v1 = Viewer.new("Andy")
v2 = Viewer.new("Becca")
v3 = Viewer.new("Charlie")
v4 = Viewer.new("Danelle")
v5 = Viewer.new("Evan")

r1 = Review.new(v1, m2, 5)
r2 = Review.new(v2, m3, 6)
r3 = Review.new(v3, m4, 7)
r4 = Review.new(v4, m5, 8)
r5 = Review.new(v1, m1, 9)
r6 = Review.new(v5, m1, 4)
r7 = Review.new(v5, m2, 8)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
