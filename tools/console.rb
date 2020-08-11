# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Movie -< Review >- Viewer 


#MOVIE INSTANCES 

movie1 = Movie.new('spider-man')
movie2 = Movie.new('Your name')
movie3 = Movie.new('the light house') 
movie4 = Movie.new('Jojo Rabbit')


#VIEWER INSTANCES 


viewer1 = Viewer.new('charliepatronr')
viewer2 = Viewer.new('paopao')
viewer3 = Viewer.new('charliespidy')
viewer4 = Viewer.new('quirotagoras')


# REVIEW INSTANCES 

# def intialize(viewer, movie, rating)

review1 = Review.new(viewer1, movie1, 4.6)
review2 = Review.new(viewer2, movie3, 4)
review3 = Review.new(viewer3, movie2, 4.9)
review4 = Review.new(viewer4, movie4,4.3)
review5 = Review.new(viewer1, movie3, 4.5)
review6 = Review.new(viewer2, movie2, 4.7)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
