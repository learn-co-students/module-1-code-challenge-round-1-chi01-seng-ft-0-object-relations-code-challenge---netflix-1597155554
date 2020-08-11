class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
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
    ratings = self.reviews.map do |review_instance|
      review_instance.rating
    end
    @rating_average = ratings.sum.to_f / ratings.count
  end

  def self.highest_rated
    self.all.max do |movie_instance|
      movie_instance.average_rating
    end
  end

  def self.all
    @@all
  end

end
