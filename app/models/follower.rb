class Follower

    # Basic Attributes and Methods

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

    def oaths
        BloodOath.all.select {|oath| oath.follower == self}
    end
    
    def cults
        self.oaths.map {|oath| oath.cult}.uniq
    end

    def self.of_a_certain_age(age)
        @@all.select {|follower| follower.age >= age}
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    # Advanced Methods

    def my_cults_slogans
        self.cults.each {|cult| puts "#{cult.slogan}"}
    end

    def self.most_active
        count_hash = BloodOath.all.reduce({}) do |memo, oath|
            memo[oath.follower] == nil ? memo[oath.follower] = 1 : memo[oath.follower] += 1
            memo
        end
        count_hash.max_by {|follower, count| count}[0]
    end

    def self.top_ten
        count_hash = BloodOath.all.reduce({}) do |memo, oath|
            memo[oath.follower] == nil ? memo[oath.follower] = 1 : memo[oath.follower] += 1
            memo
        end
        top_ten = count_hash.max_by(10) {|follower, count| count}
        top_ten.map {|follower_count| follower_count[0]}
    end

end