# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# SEED DATA

# MOVIE INSTANCES title
m1 = Movie.new('Sunless')
m2 = Movie.new('An American Pickle')
m3 = Movie.new('Eternal Sunshine of a Spotless Mind')
m4 = Movie.new('Happy')
m5 = Movie.new('Happy')

# VIEWER INSTANCES username
v1 = Viewer.new('nataliag')
v2 = Viewer.new('black_bubbles')
v3 = Viewer.new('bruce38')

# REVIEW INSTANCES viewer, movie, rating
r1 = Review.new(v1, m1, 10)
r2 = Review.new(v2, m2, 8)
r3 = Review.new(v2, m3, 8)
r4 = Review.new(v3, m4, 1)
r5 = Review.new(v3, m5, 1)

# TESTS
# p v1.rate_movie(m1, 9)
# p Review.all

pp Movie.highest_rated

# NOTES
# Viewer -< Review >- Movie
# Review is the joiner!

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
# 0
