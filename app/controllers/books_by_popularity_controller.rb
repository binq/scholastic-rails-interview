class BooksByPopularityController < ApplicationController
  def index
    @books = Book.order(:rank, :title).collect do |book|
      book.title = book.title[0...65]
      book
    end
  end
end
