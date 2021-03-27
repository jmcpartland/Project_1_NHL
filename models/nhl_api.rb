class NHL_API
    attr_reader :response

    def initialize
        url = "https://statsapi.web.nhl.com/api/v1/teams"
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        @response = JSON.parse(response)
    end

    # def self.divisionList
    #     Team.all.map{|team| team.division}.uniq
    # end

    # def self.teamListByDivision(divisionResult)
    #     result = Team.all.select {|team| team.division == divisionResult}
    #     teams = result.map{|team| team.name}
    # end
end