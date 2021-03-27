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
        input = @prompt.enum_select("\nEnter the number next to the division to see a list of teams.", 
            Team.divisionList, "Exit", per_page: 12)
        
        if Team.divisionList.include?(input)
            @teams = Team.teamListByDivision(input)
            team_menu
        else input == "Exit"
            exit_app
        end
    end

    def team_menu
        input2 = @prompt.enum_select("\nEnter the number next to the Team for more information.", 
            @teams, "Return to main menu", "Exit", per_page: 12)

        if @teams.include?(input2)
            Team.printTeamDetails(input2)
            try_again_menu
        elsif input2 == "Return to main menu"
            menu
        else input2 == "Exit"
            exit_app
        end
    end

    def try_again_menu
        input3 = @prompt.enum_select("\nWould you like to see a different team?", 
            "Yes", "No", per_page: 12)
        if input3 == "Yes"
            menu
        else input3 == "No"
            exit_app
        end
    end

    def exit_app
        puts "\nThank you for using the NHL team information CLI app."
    end
end