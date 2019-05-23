class Library
  attr_reader :member_list

  def initialize(member_list_class = MemberList)
    @member_list = member_list_class.new
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
end
