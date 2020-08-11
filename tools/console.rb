# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Ever After")
movie2 = Movie.new("Easy A")
movie3 = Movie.new("The Day of the Doctor")
movie4 = Movie.new("A Star is Born")

viewer1 = Viewer.new("Kimberlyn")
viewer2 = Viewer.new("Cyndi")

review1 = Review.new(viewer1, movie1, 3)
review2 = Review.new(viewer1, movie3, 4)
review3 = Review.new(viewer1, movie4, 1)
review4 = Review.new(viewer2, movie4, 5)
review5 = Review.new(viewer2, movie2, 3)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
