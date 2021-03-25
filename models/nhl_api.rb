class NHL_API
    attr_reader :response

    def initialize
        url = "https://statsapi.web.nhl.com/api/v1/teams"
        uri = URI.parse(url)
        response = Net::HTTP.get(uri)
        @response = JSON.parse(response)
    end

    def self.divisionList
        Team.all.map{|team| team.division}.uniq
    end
end