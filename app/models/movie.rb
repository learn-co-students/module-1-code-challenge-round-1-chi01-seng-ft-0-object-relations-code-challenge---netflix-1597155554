
class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    
    @@all << self
  end

  # def reviews
  #   Movie.all.select do |review_instance|
  #     review_instance.movie == self
  #   end
  # end

  def self.all
    @@all
  end

end # End of class
