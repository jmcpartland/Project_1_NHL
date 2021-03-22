require 'pry'
require 'open-uri'
require 'net/http'
require 'json'
require_relative "./models/team_search.rb"
require_relative "./models/team.rb"

puts "What do you want to search for?"
input = gets.strip

search = TeamSearch.new(input)
teams = search.teamList.map{|team| Team.new(team)}
teams["name"].each do |team|
    puts "*" * 15
    team.print_summary
end

# search.teams.each do |team|
#     # binding.pry
#     puts team["name"]
#     puts team["division"]["name"]
# end

# binding.pry