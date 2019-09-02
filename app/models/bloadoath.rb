class BloodOath

    # Basic Attributes and Methods

    attr_reader :initiation_date, :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @initiation_date = Time.now.strftime("%F")
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end

    # Advanced Methods


#     BloodOath.first_oath
# returns the Follower instance for the follower that made the very first blood oath

    def self.first_oath
      @@all.first
    end

end
