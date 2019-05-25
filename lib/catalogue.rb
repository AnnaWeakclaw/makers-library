class Catalogue
  def initialize
    @cat = []
  end
  def add(book)
    @cat.push(book)
  end
  def show(id)
    @cat.select { |book|
      book.id == id
    }
  end
end