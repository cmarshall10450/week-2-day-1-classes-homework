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
		get_book_by_name(title)[:rental_details]
	end

	def add_new_book(title)
		new_book = {
			title: title,
			rental_details: {
				student_name: "",
				date: ""
			}
		}

		@books << new_book
	end

	def update_rental_details(title, name, date)
		book = get_book_by_name(title)
		if book
			book[:rental_details][:student_name] = name
			book[:rental_details][:date] = date
		end
	end

end