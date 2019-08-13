class Cult

    attr_accessor :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def oaths
        BloodOath.all.select do |oath| 
            oath.cult == self
        end
    end

    def followers
        oaths.map do |oath|
            oath.follower 
        end
    end

    # Cult.all
    # returns an Array of all the cults

    def self.all 
        @@all 
    end 


    # Cult#recruit_follower
    # takes in an argument of a Follower instance and adds them to this cult's list of followers

    def recruit_follower(follower)
        BloodOath.new(follower, self)
    
    end


    # Cult#cult_population
    # returns a Fixnum that is the number of followers in this cult

    def cult_population
    end

    # Cult.find_by_name
    # takes a String argument that is a name and returns a Cult instance whose name matches that argument

    def self.find_by_name(name)
       self.all.find do |cult| 
       cult == name
        end
    end

    # Cult.find_by_location
    # takes a String argument that is a location and returns an Array of cults that are in that location

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end
    

    ## Cult.find_by_founding_year
    # takes a Fixnum argument that is a year and returns all of the cults founded in that year

    def self.find_by_founding_year(founding_year)
        self.all.select do |cult|
            cult.founding_year == founding_year
        end
    end



end



# Cult

# Cult#name
# returns a String that is the cult's name

# Cult#location
# returns a String that is the city where the cult is located

# Cult#founding_year
# returns a Fixnum that is the year the cult was founded

# Cult#slogan
# returns a String that is this cult's slogan
