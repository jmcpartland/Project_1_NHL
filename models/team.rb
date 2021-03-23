class Team

    attr_reader :teamList, :name, :division, :locationName, :firstYearOfPlay

    @@all = []

    def initialize(teamList)
        @name = teamList["name"]
        @division = teamList["division"]["name"]
        @locationName = teamList["locationName"]
        @firstYearOfPlay = teamList["firstYearOfPlay"]
        @@all << self
    end

    def self.all
        @@all
    end
end