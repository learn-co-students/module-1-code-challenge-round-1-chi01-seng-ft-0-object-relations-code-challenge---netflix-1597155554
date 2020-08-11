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


  def self.all
    @@all
  end
  
end
