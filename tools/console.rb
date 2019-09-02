require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


geeks = Cult.new("Geeks", "NYC", 2000, "We love math!")
jocks = Cult.new("Jocks", "Detriot", 1992, "Sports.")
coders = Cult.new("Coders", "DUMBO", 2019, "Coding is cool!")
we_workers = Cult.new("WeWorkers", "DUMBO", 2019, "WeWork 4 life!")

matt = Follower.new("Matt", 27, "Hockey is life.")
beers = Follower.new("Beers", 26, "I love video games.")
klag = Follower.new("Klag", 26, "I am a goalie.")
f1 = Follower.new("f1", 26, "I am f1.")
f2 = Follower.new("f2", 26, "I am f2.")
f3 = Follower.new("f3", 26, "I am f3.")
f4 = Follower.new("f4", 26, "I am f4.")
f5 = Follower.new("f5", 26, "I am f5.")
f6 = Follower.new("f6", 26, "I am f6.")
f7 = Follower.new("f7", 26, "I am f7.")
f8 = Follower.new("f8", 26, "I am f8.")
f9 = Follower.new("f9", 26, "I am f9.")


b1 = BloodOath.new(coders, matt)
b2 = BloodOath.new(coders, beers)
b3 = BloodOath.new(geeks, matt)
b4 = BloodOath.new(geeks, beers)
b5 = BloodOath.new(geeks, klag)
b6 = BloodOath.new(jocks, matt)
b7 = BloodOath.new(jocks, beers)
b8 = BloodOath.new(jocks, klag)






binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
