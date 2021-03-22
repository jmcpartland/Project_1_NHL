class TeamSearch

    attr_reader :teamList

    def initialize(input)
        search(input)
    end

    def search(input)
        # puts "What do you want to search for?"
        # input = gets.strip
        url = "https://statsapi.web.nhl.com/api/v1/teams"
        uri = URI.parse(url)
        getResponse = Net::HTTP.get(uri)
        json = JSON.parse(getResponse)
        binding.pry
        @teamList = json["teams"]

        # This is for testing 1 team
        myTeam = teamList[1]

    end

end