class Review


#CHANGE IF NOT NEEDED
    attr_accessor   :viewer, :movie, :rating

     @@all = []
    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating.to_f

        self.class.all << self
    end



    def self.all
        @@all
    end


end
