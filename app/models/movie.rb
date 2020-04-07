class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @average_rate = nil
  end

  def self.all
    @@all
  end
  def reviews 
    Review.all.select{|r| r.movie == self}
  end
  def reviewers 
    reviews.map{|r| r.viewer}
  end

  def average_rating
    total = 0 
    reviews.map{|r| total += r.rating}

    @average_rate = total/reviews.count.to_f
  end
  def self.highest_rated
    all_avg = Movie.all.max_by{|m| m.average_rating}
  end

end
