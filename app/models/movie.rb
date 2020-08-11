class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  #returns an array of all the `Review` instances for the `Movie`.
  def reviews #m1.reviews
    Review.all.select { |review_instance| review_instance.movie == self }
  end

  #returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers # m1.reviewers
    movie_reviews_array = self.reviews.map { |review_instance| review_instance.viewer }
    movie_reviews_array.uniq
  end

  #returns the average of all ratings for the `Movie` instance
  def average_rating #m1.average_rating
    sum = self.reviews.sum { |review_instance| review_instance.rating }
    sum / reviews.count
  end


  def self.all
    @@all
  end

  #returns the `Movie` instance with the highest average rating.
  def self.highest_rated # ex: Movie.highest_rated
    Review.all.max_by { |review_instance| review_instance.movie.average_rating }
  end


end # end of Movie class

