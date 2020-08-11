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



  def self.all
    @@all
  end

end

