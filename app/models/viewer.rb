class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
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
    
    movie_titles= reviewed_movies.select do |movie_instance|
      movie_instance.title == movie
    end
    movie_titles.include?(movie)
    # binding.pry
  end

  def rate_movie(movie, rating)
     if self.reviewed_movies.include?(movie)
      # binding.pry
     Review.new(self, movie, rating)
     end
  end
end


