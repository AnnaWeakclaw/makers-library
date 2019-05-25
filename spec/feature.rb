require './lib/library'
require './lib/member'
require './lib/member_list'
require './lib/catalogue'
require './lib/book'

lib =  Library.new
mem =  Member.new("1", "First") 
book = Book.new("Book", "Makers", 1)
cat =   Catalogue.new 

lib.add_book("Book", "Makers", 2)
lib.show_details(2)
mem.check_out(book)
mem