require('minitest/autorun')
require_relative('../Library')

class TestLibrary < MiniTest::Test

	def setup
		@book = {
			title: "lord_of_the_rings",
			rental_details: {
				student_name: "Jeff",
				date: "01/12/16"
			}
		}

		@library = Library.new([@book])
	end

	def test_list_books
		assert_equal([@book], @library.books)
	end

	def test_get_book_by_name
		assert_equal(@book, @library.get_book_by_name('lord_of_the_rings'))
	end

	def test_get_book_rental_details
		assert_equal(@book[:rental_details], @library.get_book_rental_details('lord_of_the_rings'))
	end
end