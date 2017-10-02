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
		@team.coach_name = 'Chris Marshall'
		assert_equal('Chris Marshall', @team.coach_name)
	end

	def test_add_new_player
		@team.add_new_player('Chris Marshall')
		assert_equal(4, @team.players.count)
	end

	def test_player_in_team__player_in_team
		assert_equal(true, @team.player_in_team?('Luke Ayling'))
	end

	def test_player_in_team__player_not_in_team
		assert_equal(false, @team.player_in_team?('Not A Player'))
	end

	def test_update_points__team_won
		@team.update_points('win')
		assert_equal(3, @team.points)
	end

	def test_update_points__team_lost
		@team.update_points('loss')
		assert_equal(0, @team.points)
	end
end