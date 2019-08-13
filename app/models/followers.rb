class Followers
attr_reader :name, :age, :life_motto
@@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all 
    end

   def bloodoath
    BloodOath.all.select do |oath|
        oath.follower ==self
    end
   end

   def cults
    bloodoath.map do |oath|
        oath.cult
    end
   end

   def join_cult(cult)
    BloodOath.new(self, cult)
   end

  def self.of_a_certain_age(age)
       array = Followers.all.select do |follower| 
        follower.age >= age
    end
  end


end