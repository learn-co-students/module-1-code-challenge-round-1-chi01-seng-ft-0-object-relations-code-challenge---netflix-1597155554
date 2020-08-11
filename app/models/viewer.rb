class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end
  
  def reviews
    Review.all.select do |review_instance|
      review_instance.viewer == self
    end
  end

  def reviewed_movies
    reviews.map do |review_instance|
      review_instance.movie
    end
  end

  def reviewed_movie?(movie)
    reviewed_movies.any?(movie)
  end

  def rate_movie(movie_instance, rating)
    if reviewed_movie?(movie_instance)
      review = Review.all.find do |review_instance|
        review_instance.movie == movie_instance
      end
      review.rating = rating
    else
       Review.new(self, movie_instance, rating)
    end
  end

end


=begin

X- `Viewer#initialize(username)`
  - `Viewer` is initialized with a username (string)
  - username **can be** changed after the Viewer is initialized
X- `Viewer#username`
  - returns the Viewer's username
X- `Viewer.all`
  - returns an array of all the Viewer instances that have been initialized

X- `Viewer#reviews`
  - returns an array of `Review` instances associated with the `Viewer` instance.
X- `Viewer#reviewed_movies`
  - returns an array of `Movie` instances reviewed by the `Viewer` instance.

X- `Viewer#reviewed_movie?(movie)`
  - a `Movie` instance is the only argument
  - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
X- `Viewer#rate_movie(movie, rating)`
  - a `Movie` instance and a rating (number) are passed in as arguments
  - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
  - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance

=end