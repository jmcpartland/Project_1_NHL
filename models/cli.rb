class CLI
    def initialize
        @prompt = TTY::Prompt.new
        welcome
        menu
    end
    
    # binding.pry
    
    def welcome
        puts "\nWelcome to the NHL team information app.\n\n"
    end
      
      
    def menu
        input = @prompt.enum_select("Enter the number next to the division.", [NHL_API.divisionList, "Exit"])
        result = Team.all.select {|team| team.division == input}
        teams = result.map{|team| team.name}
        
        input2 = @prompt.enum_select("Enter the number next to the team you want to see more information on.", [teams, "Exit"])

    end
    # binding.pry

end