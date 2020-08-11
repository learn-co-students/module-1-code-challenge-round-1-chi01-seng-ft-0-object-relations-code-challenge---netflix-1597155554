class Movie

  #initialize with title
  #track all Movie instances
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  #instance method that returns a list of reviews for movie instance
  def reviews 
    Review.all.select {|review_instance| review_instance.movie == self}
  end

  #instance method that lists all viewers that reviewed movie
  def reviewers
    self.reviews.map {|review| review.viewer}
  end

  #instance method returning the average rating of a movie instance
  def average_rating
    sum = self.reviews.sum {|review| review.rating}
    sum.to_f/self.reviews.count
  end

  #class constructor that returns highest rated movie by average
  def self.highest_rated
    self.all.max_by {|movie_instance| movie_instance.average_rating}
  end

end
