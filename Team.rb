class Team

	attr_accessor :coach_name
	attr_reader :team_name, :players, :points

	def initialize(team_name, players, coach_name)
		@team_name = team_name
		@players = players
		@coach_name = coach_name
		@points = 0
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

	def update_points(status)
		@points += 3 if status == 'win'
	end

end