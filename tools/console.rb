require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

heavens_gate = Cult.new("Heavens Gate", "Pennsylvania", 1999, "Drink the Kool Aid!")
cult_mean_girls = Cult.new("Mean Girls Cult", "NYC", 2001, "We Wear Pink on Wednesdays.")
cult_heathers = Cult.new("The Heathers", "New Jersey", 1991, "The Most Popular Ones.")

edward = Follower.new("Edward", 32, "Yum, Kool Aid!")
barbie = Follower.new("Barbie", 18, "I'm So Cool.")
heather = Follower.new("Heather", 17, "I'm the New Heather.")

blood_oath_1 = BloodOath.new(edward, heavens_gate)
blood_oath_2 = BloodOath.new(barbie, cult_mean_girls)
blood_oath_3 = BloodOath.new(heather, cult_heathers)

new_recruit = Follower.new("New Girl", 21, "I'm a New Recruit! Yay, Go Cult!")

barbie.join_cult(cult_heathers)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
