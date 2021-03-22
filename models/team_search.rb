class TeamSearch

    attr_reader :teams

    def initialize
        search
    end

    def search
        url = "https://statsapi.web.nhl.com/api/v1/teams"
        uri = URI.parse(url)
        getResponse = Net::HTTP.get(uri)
        json = JSON.parse(getResponse)
        @teams = json["teams"]
    end

end