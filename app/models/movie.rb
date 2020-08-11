class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    
    @@all << self
    # self.class.all << self
  end
  
  def reviews
    Review.all.select {|instance| instance.movie == self}
  end

  def average_rating
    sum = self.reviews.sum {|instance| instance.rating}
    count = self.reviews.count.to_f
    sum / count
  end

  def self.highest_rated
    movies = Review.all.select {|instance| instance.movie}
    # movies.max_by {|instance| instance.average_rating}
    # Can't figure out how to fight the highest average based on each movie instance and their separate reviews.
  end

  def self.all
    @@all
  end

end
