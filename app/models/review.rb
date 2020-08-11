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

    def viewer

    end

    def movie
    end
end




# - `Review#viewer`
#   - returns the `Viewer` instance associated with the `Review` instance
# - `Review#movie`
#   - returns the `Movie` instance associated with the `Review` instance
