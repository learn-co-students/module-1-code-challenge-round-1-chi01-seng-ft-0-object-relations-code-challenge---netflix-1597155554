class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    self.class.all << self
  end

  def reviews
    viewer_instance = Review.all.select {|review_instance| review_instance.viewer == self}
    review_instance.viewer == self
    binding.pry
  end

  def self.all
    @@all
  end

  # def reviews
  #   Review.all.select do |reviews|
  #     reviews.viewer == self
  #   end
  # end

  
end

# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.