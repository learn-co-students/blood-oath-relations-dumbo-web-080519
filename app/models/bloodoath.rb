class BloodOath

    attr_accessor :follower, :cult

    @@all = []

    def initialize(follower, cult)
        @initiation_date = Time.now
        @follower = follower 
        @cult = cult 
        @@all << self 
    end

    def self.all 
        @@all 
    end
end



# BloodOath

# BloodOath#initiation_date
# returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
# BloodOath.all
# returns an Array of all the blood oaths