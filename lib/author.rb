class Author

  attr_reader :first_name, :last_name, :name, :books

  def initialize(author_hash)
    @first_name = author_hash[:first_name]
    @last_name = author_hash[:last_name]
    @name = @first_name + " " + @last_name
    @books = []
  end

  def write(title, publication_date)
    new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: publication_date})
    @books << new_book
    new_book
  end

end
