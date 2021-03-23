class Team

    attr_reader :name, :division, :locationName, :firstYearOfPlay

    @@all = []

    def initialize(teamList)
        @id = teamList["id"]
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