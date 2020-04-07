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
    Review.all.select{|r| r.viewer ==self}
  end
  def reviewed_movies
    reviews.map{|r| r.movie}
  end


  def reviewed_movie?(movie)
    reviewed_movies.include?(movie) ? true : false
  end
  def rate_movie(movie, rating)
    reviewed_movie?(movie) ? reviews.select{|r| r.movie == movie}
    .map{|r| r.rating = rating} :
    Review.new(self, movie, rating)
  end
  
end
