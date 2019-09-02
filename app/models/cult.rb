class Cult

    # Basic Attributes and Methods

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan= slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def oaths
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def followers
        self.oaths.map {|oath| oath.follower}.uniq
    end

    def self.find_by_name(name)
        @@all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        @@all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        @@all.select {|cult| cult.founding_year == year}
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_population
        self.followers.count
    end

    # Advanced Methods

    def average_age
        total_age = self.followers.reduce(0) {|accumulator, follower| accumulator += follower.age}
        num_followers = self.cult_population
        (total_age.to_f / num_followers).round(2)
    end

    def my_followers_mottos
        self.followers.each {|follower| puts "#{follower.life_motto}"}
    end

    def self.least_popular
        cult_count_hash = BloodOath.all.reduce({}) do |memo, oath|
            memo[oath.cult] == nil ? memo[oath.cult] = 1 : memo[oath.cult] += 1
            memo
        end
        cult_count_hash.min_by {|cult, count| count}[0]
    end

    def self.most_common_location
        location_count_hash = @@all.reduce({}) do |memo, cult|
            memo[cult.location] == nil ? memo[cult.location] = 1 : memo[cult.location] += 1
            memo
        end
        location_count_hash.max_by {|location, count| count}[0]
    end

end