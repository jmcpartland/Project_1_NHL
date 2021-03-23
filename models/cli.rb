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
        divisionList = Team.all.map{|team| team.division}.uniq
  
        input = @prompt.enum_select("Enter the number next to the division.", [divisionList, "Exit"])
        
        Team.all.select {|team| team.division == input && (puts team.name)}
    end

end