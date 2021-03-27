class CLI
    def initialize
        @prompt = TTY::Prompt.new
        welcome
        menu
    end

    def welcome
        puts "\nWelcome to the NHL team information CLI app.\n"
    end

    def menu
        input = @prompt.enum_select("Enter the number next to the division to see a list of teams.", [
            Team.divisionList, "Exit"], per_page: 12)
        
        teams = Team.teamListByDivision(input)
        
        input2 = @prompt.enum_select("Enter the number next to the Team for more information.", [
            teams, "Exit"], per_page: 12)

        Team.printTeamDetails(input2)
    end
end