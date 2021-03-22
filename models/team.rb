class Team

    attr_reader :name, :division

    def initialize(hash)
        @name = hash["name"]
        @division = hash["division"]["name"]
    end

    def print_summary
        puts name
        puts division
    end
end