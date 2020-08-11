# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


m1 = Movie.new("Argo")
m2 = Movie.new("The Dark Knight")
m3 = Movie.new("Titanic")

v1 = Viewer.new("jefflovesmovies")
v2 = Viewer.new("moviesnob22")
v3 = Viewer.new("dave15")

#(viewer_instance, movie_instance, rating)
r1 = Review.new(v1, m1, 5)
r2 = Review.new(v2, m2, 5)
r3 = Review.new(v3, m3, 1)
r4 = Review.new(v1, m2, 4)
r5 = Review.new(v1, m3, 2)
r6 = Review.new(v3, m2, 2)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
