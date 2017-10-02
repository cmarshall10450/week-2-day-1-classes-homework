class Library
	attr_reader :books

	def initialize(books)
		@books = books || []
	end
	
	def get_book_by_name(title)
		for book in books
			return book if book[:title] == title
		end
	end

	def get_book_rental_details(title)
		for book in books
			return book[:rental_details] if book[:title] == title
		end
	end

end