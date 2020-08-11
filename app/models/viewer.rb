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
    Reviews.select do |review_instance|
      review_instance.viewer == self 
    end 
  end  
  
  def reviewed_movies 
    Reviewed_movies.select do |movie_instance|
      movie_instance.viewer == self 
    end 
  end  

  def review_movie 
    if 
    else 
    end 
  end 
  
end


=begin
- `Viewer#reviewed_movie?(movie)`
  - a `Movie` instance is the only argument
  - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review`
   instance that has this `Viewer` and `Movie`), returns `false` otherwise
=end 