class Review

    attr_reader :viewer, :movie
    attr_accessor :rating 

    @@all = []

    def initialize(viewer_instance, movie_instance, rating)
        @viewer = viewer_instance
        @movie = movie_instance
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

end

=begin

X- `Review#initialize(viewer, movie, rating)`
  - `Review` is initialized with a `Viewer` instance, a `Movie` instance, and a rating (number)
X- `Review#rating`
  - returns the rating for the `Review` instance
X- `Review.all`
  - returns an array of all initialized `Review` instances

X- `Review#viewer`
  - returns the `Viewer` instance associated with the `Review` instance
X- `Review#movie`
  - returns the `Movie` instance associated with the `Review` instance

=end