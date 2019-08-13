class BloodOath
    attr_reader :initiation, :follower, :cult 
    @@all = []
    def initialize(initiation = Time.now.strftime("%F"),follower, cult)
        @initiation = initiation
        @follower = follower
        @cult = cult 
        @@all << self
    end

    def self.all
        @@all 
    end
end