class Review
    attr_accessor :rating
    attr_reader :viewer, :movie

    @@all = []

    def self.all
        @@all
    end

    def initialize(viewer,movie,rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        @@all << self
    end
    

end
