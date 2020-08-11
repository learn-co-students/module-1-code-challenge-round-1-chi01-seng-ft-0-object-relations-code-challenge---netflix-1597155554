
class Viewer
  attr_accessor :username 
  #  attr_reader :reviews
  @@all = []

  def initialize(username)
    @username = username

    @@all << self
  end

  def reviews
    Review.all.select do |review_instance|
      review_instance.viewer == self
    end
  end

  # def reviewed_movies
  
  # end

  def self.all
    @@all
  end
  
end # End of class
