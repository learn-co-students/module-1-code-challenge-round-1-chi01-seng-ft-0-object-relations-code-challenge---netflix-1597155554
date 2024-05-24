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
  def average_rating # m1.average_rating
    sum = self.reviews.sum { |review_instance| review_instance.rating }
    sum.to_f / self.reviews.size
  end


  def self.all
    @@all
  end

  #returns the `Movie` instance with the highest average rating.
  # if there's a movie without a review, this won't work because 
  # the method #reviews called within #average.rating will return nil 
  def self.highest_rated # ex: Movie.highest_rated
    self.all.max_by { |movie_instance| movie_instance.average_rating }
  end

  # this Class method works even if there's a movie without a review
  # def self.highest_rated # ex: Movie.highest_rated
  #   review = Review.all.max_by { |review_instance| review_instance.movie.average_rating }
  #   review.movie
  # end

end # end of Movie class

