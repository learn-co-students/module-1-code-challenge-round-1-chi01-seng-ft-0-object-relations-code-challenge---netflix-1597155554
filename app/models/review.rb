class Review
    attr_reader :rating

    @@all = []

    def initialize(viewer, movie, rating)
      @viewer = viewer
      @movie = movie 
      @rating = rating 
      self.class.all << self 
    end

    def self.all
     @@all 
    end 

   
end 

=begin

=end 