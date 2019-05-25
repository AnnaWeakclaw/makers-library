class Book
  attr_reader :title, :author, :id
  def initialize(title, author, id)
    @title = title
    @author = author
    @id = id
  end
end