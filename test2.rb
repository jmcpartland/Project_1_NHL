require 'pry'
require 'open-uri'
require 'net/http'
require 'json'
require "tty-prompt"

    url = "https://statsapi.web.nhl.com/api/v1/teams"
    uri = URI.parse(url)
    getResponse = Net::HTTP.get(uri)
    json = JSON.parse(getResponse)
    teamList = json["teams"] #.each{|team| Team.new(team)}
    binding.pry


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
        @teamList = json["teams"]
            
    end
    binding.pry
    
end

# class Team
#     attr_reader :teamList, :name, :division, :locationName, :firstYearOfPlay
        
#     @@all = []
    
#     def initialize(teamList)
#         @name = teamList["name"]
#         @division = teamList["division"]["name"]
#         @locationName = teamList["locationName"]
#         @firstYearOfPlay = teamList["firstYearOfPlay"]
#         @@all << self
#     end
    
#     def self.all
#         @@all
#     end
#     binding.pry
# end
