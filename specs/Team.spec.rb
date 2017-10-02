require('minitest/autorun')
require_relative('../Team')

class TestTeam < MiniTest::Test

	def setup
		@players = ['Luke Ayling', 'Cameron Borthwick-Jackson', 'Hadi Sacko']
		@team = Team.new('Leeds United', @players, 'Thomas Christiansen')
	end

	def test_get_team_name
		assert_equal('Leeds United', @team.team_name)
	end

	def test_get_players
		assert_equal(@players, @team.players)
	end

	def test_get_coach_name
		assert_equal('Thomas Christiansen', @team.coach_name)
	end

	def test_set_coach_name
		@team.set_coach_name('Chris Marshall')
		assert_equal('Chris Marshall', @team.coach_name)
	end

end