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

  def reviews
    Review.all.select do |review_instance|
      review_instance.movie == self
    end
  end

  def reviewers
    self.reviews.map do |review_instance|
      review_instance.viewer 
    end
  end

  def average_rating
    total_average = reviews.sum do |review_instance|
      review_instance.rating
    end
    total_average/reviews.count
  end

  def self.highest_rated
    Movie.all.max_by do |movie_instance|
      movie_instance.average_rating
    end
  end
end


# Movie#reviews
# returns an array of all the Review instances for the Movie.
# Movie#reviewers
# returns an array of all of the Viewer instances that reviewed the Movie.