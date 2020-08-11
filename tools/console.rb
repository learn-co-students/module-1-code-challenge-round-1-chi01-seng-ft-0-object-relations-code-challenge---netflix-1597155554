# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

plane = Movie.new("Airplane")
jaws = Movie.new("Jaws")
candy = Movie.new("Willy Wonka and the factory")
powers = Movie.new("Austin Powers")

ignas = Viewer.new("Ignas")
anthony = Viewer.new("Anthony")
lee = Viewer.new("Lee")
klud = Viewer.new("Klaudijus")

r1 = Review.new(ignas,plane,16)
r2 = Review.new(lee,jaws,3)
r3 = Review.new(anthony,candy,10)
r4 = Review.new(lee,plane,8)
r5 = Review.new(klud,powers,6)

# (viewer,movie,rating)

# (viewer,movie,rating)
# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
