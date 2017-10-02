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

end