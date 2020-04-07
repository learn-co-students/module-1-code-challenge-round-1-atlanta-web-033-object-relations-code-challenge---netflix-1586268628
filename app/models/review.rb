class Review
    attr_reader :movie 
    attr_accessor :rating, :viewer

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer 
        @movie = movie 
        @rating = rating
        @@all << self
    end

    def self.all 
       @@all
    end
    def poster
        self.viewer
    end
    def movie_reviewed 
        self.movie
    end


end
