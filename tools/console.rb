# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

movie1 = Movie.new("Titanic")
movie2 = Movie.new("The Reader")
movie3 = Movie.new("The Dressmaker")
movie4 = Movie.new("The Holiday")
movie5 = Movie.new("Eternal Sunshine of the Spotless Mind")

viewer1 = Viewer.new("therealsteele")
viewer2 = Viewer.new("sammyjo")
viewer3 = Viewer.new("awesomedudeflicks")
viewer4 = Viewer.new("coolchickreviews")
viewer5 = Viewer.new("grandmawatches")

review1 = Review.new(viewer1, movie1, 89)
review2 = Review.new(viewer2, movie2, 79)
review3 = Review.new(viewer2, movie5, 99)
review4 = Review.new(viewer3, movie5, 100)
review5 = Review.new(viewer5, movie5, 100)
review6 = Review.new(viewer4, movie4, 100)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
