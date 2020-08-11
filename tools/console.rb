# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# initialize(title)
m1 = Movie.new("fun movie")
m2 = Movie.new("horror movie")
m3 = Movie.new("western movie")
m4 = Movie.new("war movie")

# initialize(username)
v1 = Viewer.new("john")
v2 = Viewer.new("Tom")
v3 = Viewer.new("Tim")
v4 = Viewer.new("Hanry")
v5 = Viewer.new("Robert")

# initialize(viewer, movie, rating)

rv1 = Review.new(v1, m1, 5)
rv2 = Review.new(v1, m3, 8)
rv3 = Review.new(v2, m4, 9)
rv4 = Review.new(v4, m2, 5)
rv5 = Review.new(v5, m2, 6)
rv6 = Review.new(v3, m2, 10)
rv7 = Review.new(v3, m1, 0)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
