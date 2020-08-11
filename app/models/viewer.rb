class Viewer

  #initialize with username
  #track all viewer instances
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  #instance method that return array of reviews associated with viewer
  def reviews 
    Review.all.select {|review_instance| review_instance.viewer == self}
  end

  #instance method that return movies reviewed by viewer
  def reviewed_movies
    self.reviews.map {|review| review.movie}
  end 

  #instance method that returns whether or not viewer instance reviewed movie argument
  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end 

  #instance method that will either create a review, or, if review already exists, assing new rating
  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      found_review = Review.all.find {|review_instance| review_instance.viewer == self && review_instance.movie == movie}
          found_review.rating = rating
    end #of if statement
  end #of rate_movie method
  
end #of Viewer class
