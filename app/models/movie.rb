class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.filter do |review_instance|
      review_instance.movie == self #grabs all the info the pertains to self
    end
  end

  def reviewers
    reviews.map(&:viewer)#just return the viewer portion of reviews instance
  end

  def average_rating
    sum = reviews.map(&:rating).sum #takes the sum of all the ratings
    count = reviews.map(&:rating).count#take the amount of of ratings there are
    sum / count #divides sum by count to figure out the average
  end#I'm going to be honest, I'm the most proud of this one.

  def self.highest_rated
    Review.all.max_by do |review_instance|
      review_instance.rating #finds the highest rating and returns it from all of the reviews
    end
  end

  def self.highest_rated_average  #I might've read the question wrong and started working on this late, unsure.
     all_ratings = Review.all.map do |finder|
      
  end

  def self.lowest_rated
    Review.all.min_by do |review_instance|
      review_instance.rating
    end
  end

end
