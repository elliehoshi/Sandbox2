class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	# def new
	# 	@book = Book.new
	# end

	# def create
	# 	@book = Book.new(book_params)
	# 	if @book.save
	# 		redirect_to action: 'index'
end
