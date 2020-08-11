class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    my_reviews = Review.all.filter do |review_instance|
      review_instance.viewer == self #grabs the information that only pertains to the viewer instance
    end
    my_reviews.uniq #added uniqs so that when I re-rate the same movie, it isn't duplicated
  end               # i.e if i re-rate plane it'll show up twice with the same information

  def reviewed_movies
    reviews.map(&:movie).uniq #grabs only the movies.. also made uniq so that when i re-rate a movie 
  end                         #it doesn't show it twice

  def reviewed_movie?(movie)
    reviews.each do |reviews_instance|#dont know/need fancy enumerable
      if reviews_instance.movie == movie #checks to see if the instance is the same with the movie passed in
        return true                     
      end
    end
    false
  end
  
  def rate_movie(movie,rating)
    reviews.map do |review_instance|
      if review_instance.viewer == self && review_instance.movie == movie
        review_instance.rating = rating#this one works buuuuuuut it'll keep returning duplicates.
      end                              ##I'd like to know how to fix that within this method and
    end                                 #not have to adjust the other ones.
    Review.new(self,movie,rating)
  end


end#end of viewer class

