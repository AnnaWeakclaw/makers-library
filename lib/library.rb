class Library
  attr_reader :member_list

  def initialize(member_list_class = MemberList, catalogue_class = Catalogue)
    @member_list = member_list_class.new
    @catalogue = catalogue_class.new
  end

  def add_member(id, name)
    member_list.add(id, name)
  end

  def show_members(id)
    member_list.members_by(id)
  end

  def lend(book, id)
    show_members(id).check_out(book)
  end

  def return(book, id)
    show_members(id).return_item(book)
  end

  def add_book(title, author, id)
    @catalogue.add(title, author, id)
  end
end
