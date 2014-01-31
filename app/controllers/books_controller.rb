class BooksController < ApplicationController
	before_action :set_book, only: [:show,:edit,:update,:destory]
	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
	end

	def update
	    respond_to do |format|
	      if @book.update(book_params)
	        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: 'edit' }
	        format.json { render json: @book.errors, status: :unprocessable_entity }
	      end
	    end
	  end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to action: 'index'
			flash[:notice] = "Successfully saved book!"
		else
			render action: 'new'
		end
	end

	private

	def book_params
		params.require(:book).permit(:title, :author, :publication_year, :isbn, :genre)
	end

	def set_book
		@book = Book.find(params[:id])
	end

end
