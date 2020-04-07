# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cory = Viewer.new("coryrosser")
harry = Viewer.new("Harry")
dan = Viewer.new("Dan")

harrypotter = Movie.new("Harry Potter")
fastandfurious = Movie.new("Fast and Furious")
hungergames = Movie.new("Hunger Games")
frozen = Movie.new("Frozen")

fivestarcory = Review.new(cory, harrypotter, 5)
threestardan = Review.new(dan, hungergames, 3)
twostardan = Review.new(dan, harrypotter, 2)

fourstarharry = Review.new(harry, harrypotter, 4)
onestarharry = Review.new(harry, hungergames, 1)
threestarcory = Review.new(cory, fastandfurious, 3)

fourstardan = Review.new(dan, frozen, 4)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
