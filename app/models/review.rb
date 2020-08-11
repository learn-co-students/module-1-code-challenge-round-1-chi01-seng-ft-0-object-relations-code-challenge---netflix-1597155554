
class Review
    attr_reader :viewer, :movie, :rating
        
    @@all = []
  
    def initialize(viewer_instance, movie_instance, rating)
      @viewer = viewer_instance
      @movie = movie_instance  
      @rating = rating = 0

      @@all << self
    end
  

    def self.all
      @@all
    end
  

end # End of class
