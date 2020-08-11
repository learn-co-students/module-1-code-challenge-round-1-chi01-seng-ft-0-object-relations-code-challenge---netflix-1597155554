class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
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
    reviews.map do |review_instance|
      review_instance.viewer
    end
  end

  def average_rating
    rating_array = reviews.map do |review_instance|
      review_instance.rating
    end
    rating_array.sum.to_f / rating_array.count.to_f
  end

  def self.highest_rated
    Movie.all.max_by do |movie_instance|
      movie_instance.average_rating
    end
  end

end

=begin

X- `Movie#initialize(title)`
  - `Movie` is initialized with a title (string)
  - title **can be** changed after the `Movie` is initialized
X- `Movie#title`
  - returns the `Movie`'s title
X- `Movie.all`
  - returns an array of all the `Movie` instances that have been initialized

X- `Movie#reviews`
  - returns an array of all the `Review` instances for the `Movie`.
X- `Movie#reviewers`
  - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

X- `Movie#average_rating`
  - returns the average of all ratings for the `Movie` instance
  - to average ratings, add all ratings together and divide by the total number of ratings.
X- `Movie.highest_rated`
  - returns the `Movie` instance with the highest average rating.

=end
