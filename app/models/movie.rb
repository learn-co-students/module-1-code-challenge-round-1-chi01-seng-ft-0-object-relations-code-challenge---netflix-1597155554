class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def movie_reviews
    Review.all.select do |review_instance|
      review_instance.movie == self
    end 
  end 

  def reviewers
    movie_reviews.map do |review_instance|
      review_instance.viewer
    end 
  end 

  def average_rating
    x = movie_reviews.map do |review_instance|
      review_instance.rating
    end
    x.sum / x.count.to_f
  end 

  def self.highest_rated
    max_array = nil
    self.average_rating.map do |review_instance|
      review_instance.rating > max_array
      max_array = review_instance.rating
    end 
    max_array
  end 

end


# Movie.highest_rated
# returns the Movie instance with the highest average rating.
