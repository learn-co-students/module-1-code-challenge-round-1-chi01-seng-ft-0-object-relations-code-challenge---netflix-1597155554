class Viewer
  attr_accessor :username

  @@all = []

  #initialize(username)
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

  #reviewed_movie?(movie)
  def reviewed_movie?(movie)
    self.reviews.any? do |review_instance|
      review_instance.movie.title == movie
    end
  end
  
  def self.all
    @@all
  end
  
end
