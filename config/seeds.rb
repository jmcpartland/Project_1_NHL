NHL_API.new.response["teams"].each{|team_hash| Team.new(team_hash)}
