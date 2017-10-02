require('minitest/autorun')
require_relative('../Team')

class TestTeam < MiniTest::Test

	def setup
		@players = ['Luke Ayling', 'Cameron Borthwick-Jackson', 'Hadi Sacko']
		@team = Team.new('Leeds United', @players, 'Thomas Christiansen')
	end

	def test_get_team_name
		assert_equal('Leeds United', @team.name)
	end

	def test_get_players
		assert_equal(@players, @team.players)
	end

	def test_get_coach_name
		assert_equal('Thomas Christiansen', @team.coach)
	end

end