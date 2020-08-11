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
    Viewer.all.select do |viewer_instance|
      viewer_instance.movie == self 
    end 
  end 

end


=begin

=end 