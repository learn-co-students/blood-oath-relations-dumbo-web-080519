require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

derya = Followers.new("Derya", 31, "Girl Power!")
kenny = Followers.new("Kenny", 31, "ELE")
matt = Followers.new("Matt", 27, "Ruby rocks")
joel = Followers.new("Joel", 27, "Java for eva!")

cult1 = Cult.new("Lahmacun", "Ma belly", 1988, "Lahmacun, sex and Rock'n Roll")
cult2 = Cult.new("CoffeeAddicts", "Dumbo", 2009, "All about that coffee")

bo1 = BloodOath.new("2009-01-01", kenny, cult2)
bo2 = BloodOath.new("1988-01-01", derya, cult1)
bo3 = BloodOath.new("2000-05-12", joel, cult1)
bo4 = BloodOath.new("1995-3-5", matt, cult1)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
