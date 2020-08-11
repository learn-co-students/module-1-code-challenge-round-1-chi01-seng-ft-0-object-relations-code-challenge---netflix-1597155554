require 'pry'


class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end


  def reviews 
    Review.all.select do |individual_review|
      individual_review.viewer == self
    end
  end

  def reviewed_movies 
    self.reviews.map do |individual_review|
      individual_review.movie
    end
  end

  def reviewed_movie?(movie)
    true_or_false = false
    self.reviewed_movies.each do |individual_movie|
      if(individual_movie == movie)
        true_or_false = true
      end
    end
    true_or_false
  end

  def rate_movie(movie, rating)
    review_instance = nil 
    if(!self.reviewed_movie?(movie))
      review_instance = Review.new(self, movie, rating)
    else
      self.reviews.each do |individual_review|
        if(individual_review.movie == movie)
          individual_review.rating = rating
          review_instance = individual_review
        end
      end

    end
    #return the review instance just to be a little more visual
    review_instance
  end


  def self.all
    @@all
  end
  
end



