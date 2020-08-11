class Review

    #initialize with viewer instance, movie instance, and rating
    #track all review instances
    def initialize(viewer, movie, rating)
        @viewer = viewer 
        @movie = movie 
        @rating = rating 

        @@all << self 
    end 

    attr_reader :viewer, :movie
    attr_accessor :rating 
    @@all = []

    def self.all 
        @@all 
    end


end
