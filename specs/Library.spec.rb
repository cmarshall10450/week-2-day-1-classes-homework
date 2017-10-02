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

	def test_get_book_by_name__book_found
		result = @library.get_book_by_name('lord_of_the_rings')
		assert_equal(@book, result)
	end

	def test_get_book_by_name__book_not_found
		result = @library.get_book_by_name('book_not_in_library')
		assert_nil(result)
	end

	def test_get_book_rental_details__book_found
		assert_equal(@book[:rental_details], @library.get_book_rental_details('lord_of_the_rings'))
	end

	def test_get_book_rental_details__book_not_found
		result = @library.get_book_rental_details('book_not_in_library')
		assert_nil(result)
	end
	
	def test_add_new_book
		@library.add_new_book('animal_farm')
		assert_equal(2, @library.books.count)
	end

	def test_update_rental_details__book_found
		@library.update_rental_details('lord_of_the_rings', 'Chris Marshall', '31/01/2018')
		book = {
			title: 'lord_of_the_rings',
			rental_details: {
				student_name: 'Chris Marshall',
				date: '31/01/2018'
			}
		}

		assert_equal(book , @library.get_book_by_name('lord_of_the_rings'))
	end

	def test_update_rental_details__book_not_found
		@library.update_rental_details('book_not_in_library', 'Chris Marshall', '31/01/2018')
		assert_nil(@library.get_book_by_name('book_not_in_library'))
	end

end