class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def wrong_key
    @books = Book.all
  end

  def russian_doll
    @books = Book.all
  end
end
