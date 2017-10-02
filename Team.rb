class Team

	attr_accessor :coach_name
	attr_reader :team_name, :players

	def initialize(team_name, players, coach_name)
		@team_name = team_name
		@players = players
		@coach_name = coach_name
	end

	def add_new_player(name)
		@players << name
	end

	def player_in_team?(name)
		for player in @players
			return true if player == name
		end
		return false
	end

end