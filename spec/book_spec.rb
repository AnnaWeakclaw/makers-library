require 'book'

describe Book do
it "has an author, title and id" do
  book = Book.new("Makers", "Author", 1)
  expect(book.title).to eq("Makers")
end
end