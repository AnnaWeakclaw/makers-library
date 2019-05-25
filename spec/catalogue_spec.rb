require 'catalogue'

describe Catalogue do
let(:cat) { Catalogue.new }
let(:book) { Book.new("Book", "Makers", 1) }
let(:book2) { Book.new("Book", "Author", 2) }

it "can have a new book added" do
expect(cat.add("Book", "Author", 2)).to include(be_a_kind_of(Book))
end

it "shows details of the book based on the id_number" do 
cat.add("Book", "Author", 2)
expect(cat.show(2)).to include(be_a_kind_of(Book))
  
end
end