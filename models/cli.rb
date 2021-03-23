class CLI
    def initialize
        @prompt = TTY::Prompt.new
        welcome
        NHL_API.new.response["teams"].each{|team_hash| Team.new(team_hash)}
        # menu
    end
    
    # binding.pry
    
    def welcome
        puts "\nWelcome to the NHL team information app.\n\n"
    end
      
      
    def menu
        divisions = ["Discover Central", "Honda West", "MassMutual East", "Scotia North"]
  
        input = @prompt.enum_select("Enter the number next to the division.", [divisions, "Exit"])
    
        case input
        when "Discover Central"
            puts "Discover Central"
        when "Honda West"
            puts "Honda West"
        when "MassMutual East"
            puts "MassMutual East"
        when "Scotia North"
            puts "Scotia North"
        when "Exit"
            puts "Exit"
        end
    end
  
end