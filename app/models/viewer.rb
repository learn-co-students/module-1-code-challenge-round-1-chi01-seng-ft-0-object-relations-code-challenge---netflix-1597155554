class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    @@all << self
    # self.class.all << self
  end

  def reviews
    Review.all.select {|instance| instance.viewer == self}
  end

  def reviewed_movies
    self.reviews.map {|instance| instance.movie}
  end

  def reviewed_movie?(movie)
    if self.reviewed_movies.include? (movie)
      true
    else 
      false
    end
  end

  def rate_movie(movie, rating)
    if !self.reviewed_movie?(movie)
      Review.new(self, movie, rating)
    else
      self.reviews.select {|instance| instance.rating = rating}
    end
  end

  def self.all
    @@all
  end
  
end
