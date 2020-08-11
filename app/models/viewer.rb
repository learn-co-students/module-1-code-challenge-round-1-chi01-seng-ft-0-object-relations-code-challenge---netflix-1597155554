class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.viewer == self
    end
  end

  def reviewed_movies
    self.reviews.map do |review_instance|
      review_instance.movie
    end
  end

  def reviewed_movie?(movie)
    if self.reviewed_movies.include?(movie)
      true
    else
      false
    end
  end

  def rate_movie(movie, rating)
    Viewer.all.select do |viewer_instance|
    if viewer_instance.reviewed_movies != movie
    return Review.new(self, movie, rating)
    else
      self.reviews.rating = rating
      end
    end
  end

  def self.all
    @@all
  end
  
end
