class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  #returns an array of `Review` instances associated with the `Viewer` instance
  def reviews # ex: v1.reviews
    Review.all.select { |review_instance| review_instance.viewer == self }
  end

  # returns an array of `Movie` instances reviewed by the `Viewer` instance.
  def reviewed_movies # ex: v2.reviewed_movies
    viewer_reviews_array = self.reviews.map { |review_instance| review_instance.movie }
    viewer_reviews_array.uniq
  end

  #returns `true` if the `Viewer` has reviewed this `Movie` 
  def reviewed_movie?(movie) # ex: v1.reviewed_movie?(m1)
    # iterate through all reviews Review.all and ask any?
    # based on condition  review_instance.movie == movie && review_instance.viewer == self
    self.reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating) # ex: v1.rate_movie(m1, 9) => true
    if self.reviewed_movie?(movie)
      matching_review_instance = Review.all.find { |review_instance| review_instance.viewer == self }
      matching_review_instance.rating = rating
    else Review.new(self, movie, rating)
    end
  end

  
  def self.all
    @@all
  end
  
end # end of Viewer class
