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

end


# Movie#initialize(title)
# Movie is initialized with a title (string)
# title can be changed after the Movie is initialized

# Movie#title
# returns the Movie's title

# Movie.all
# returns an array of all the Movie instances that have been initialized