class Cult
attr_reader :name, :location, :year, :slogan
    @@all = []
    def initialize(name, location, year, slogan)
        @name = name
        @location = location
        @year = year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all 
    end


    # It goes through BloodOath class, and selects the oat's cult
    # that matches the self(whoever is uses the method)
    def bloodoats    
        BloodOath.all.select do |oat|
            oat.cult == self
        end
    end


    # It goes through 
    def followers
        self.bloodoats.map do |oath|
            oath.follower
        end
    end

    def cult_population
        self.followers.count
    end

    def recruit(follower)
        BloodOath.new(follower, self)
    end

    def self.find_by_name(name)
        Cult.all.select do|cult|
            cult.name == name
        end
    end

    def self.find_by_location(location)
        Cult.all.select do|cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        Cult.all.select do|cult|
            cult.year == year
        end
    end


end