require('minitest/autorun')
require_relative('../Student')

class TestStudent < MiniTest::Test

	def setup
		@student = Student.new('Chris', 16)
	end
	
	def test_get_name
		assert_equal('Chris', @student.name)
	end
	
	def test_set_name
		@student.set_name('Darren')
		assert_equal('Darren', @student.name)
	end

	def test_get_cohort
		assert_equal(16, @student.cohort)
	end

	def test_set_cohort
		@student.set_cohort(15)
		assert_equal(15, @student.cohort)
	end

	def test_talk
		assert_equal('I can talk', @student.talk)
	end

	def test_say_favourite_language
		assert_equal('I love Ruby', @student.say_favourite_language('Ruby'))
	end

end