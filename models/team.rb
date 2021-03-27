class Team

    attr_reader :name, :division, :locationName, :firstYearOfPlay, :printTeamDetails, :conference, :venue

    @@all = []

    def initialize(teamList)
        @id = teamList["id"]
        @name = teamList["name"]
        @conference = teamList["conference"]["name"]
        @division = teamList["division"]["name"]
        @locationName = teamList["locationName"]
        @venue = teamList["venue"]["name"]
        @firstYearOfPlay = teamList["firstYearOfPlay"]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.divisionList
        self.all.map{|team| team.division}.uniq
    end

    def self.teamListByDivision(divisionResult)
        result = self.all.select {|team| team.division == divisionResult}
        teams = result.map{|team| team.name}
    end

    def self.printTeamDetails(teamResult)
        team = self.all.find{|t| t.name == teamResult}
        puts "*" * 25
        puts "#{team.name}"
        puts "  Conference: #{team.conference}"
        puts "  Division: #{team.division}"
        puts "  Location: #{team.locationName}"
        puts "  Venue: #{team.venue}"
        puts "  Year started: #{team.firstYearOfPlay}"
        puts "*" * 25
    end
end