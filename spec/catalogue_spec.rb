require 'catalogue'

describe Catalogue do
let(:cat) { Catalogue.new }
let(:book) { Book.new("Book", "Makers", 1) }

it "can have a new book added" do
expect(cat.add(book)).to include(book)
end

it "shows details of the book based on the id_number" do 
cat.add(book)
expect(cat.show(1)).to include(book)
  
end
end