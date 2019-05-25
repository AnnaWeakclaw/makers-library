class Catalogue
  def initialize(book = Book)
    @cat = []
    @book = book
  end
  def add(title, author, id)
    @book = @book.new(title, author, id)
    @cat.push(@book)
  end
  def show(id)
    @cat.select { |book|
      book.id == id
    }
  end
end