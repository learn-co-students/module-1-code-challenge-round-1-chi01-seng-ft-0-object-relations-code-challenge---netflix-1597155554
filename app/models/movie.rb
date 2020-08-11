require 'pry'

class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end


  def reviews 
    Review.all.select do |individual_review|
      individual_review.movie == self
    end
  end

  def reviewers 
    self.reviews.map do |individual_review|
      individual_review.viewer
    end
  end

  def average_rating
    review_score = 0
    self.reviews.each do |individual_review|
      review_score += individual_review.rating
    end
    review_score / (self.reviews.length)
  end

  def self.all
    @@all
  end

  def self.highest_rated
    rating_comparison = 0
    review_hash = {}

    self.all.each do |individual_movie|
      Review.all.each do |individual_review|
        if(individual_review.movie == individual_movie && individual_review.rating > rating_comparison)
          rating_comparison = individual_review.rating
        end
      end
      review_hash[individual_movie.title] = rating_comparison
    end
    movie = review_hash.sort_by {|k,v| -v}.first.first
    
    self.all.find do |individual_movie|
      individual_movie.title == movie
    end

  end

end
