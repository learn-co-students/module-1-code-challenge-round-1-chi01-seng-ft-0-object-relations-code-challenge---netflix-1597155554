class Movie
  attr_accessor :title

  @@all = []

  #initialize(title)
  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select do |movie_instance|
      movie_instance.movie == self
    end
  end

  def reviewers
    self.reviews.map do |movie_instance|
      movie_instance.viewer
    end
  end

  def average_rating
    total_ratings = self.reviews.map do |movie_instance|
      movie_instance.rating 
    end
    total_ratings.sum/total_ratings.size
  end  

  def self.highest_rated
    Review.all.max_by do |movie_instance|
      movie_instance.rating
    end
  end

  def self.all
    @@all
  end

end
