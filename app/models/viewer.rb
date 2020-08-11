class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select do |review_instance|
      review_instance.viewer == self
    end 
  end 

  def reviewed_movies
    reviews.map do |review_instance|
      review_instance.movie
    end 
  end 

  def reviewed_movie?(movie)
    Review.all.map do |review_instance|
       if review_instance.viewer == self
         return true
       else 
        return false
      end 
    end 
  end 

  def rate_movie(movie, rating)
    #reviewed_movie?.map do |review_instance|
      #if review_instance.viewer !== self
    Review.new(self, movie, rating)
    end 
  end 
end


# Viewer#rate_movie(movie, rating)
# a Movie instance and a rating (number) are passed in as arguments
# if the Viewer instance and the passed Movie instance are not already associated, this method should create a new Review instance
# if this Viewer has already reviewed this Movie, assigns the new rating to the existing Review instance

