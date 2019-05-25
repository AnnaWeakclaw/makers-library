require 'library'
require 'member'
require 'member_list'

describe 'Feature members of the library' do

subject { Library.new }
let(:member) { Member.new("1", "First") }
let(:book) { Book.new("Book", "Makers", 1)}
let(:cat) { Catalogue.new }

  it 'shows me members' do
    subject.add_member("123", "Hero")
    subject.add_member("456", "Monkey")
    expect(subject.show_members("456")).to be_kind_of(Member)
  end

  it "lends a book and returns it" do 
    subject.add_member("123", "Hero")
    subject.add_member("456", "Monkey")
    subject.lend(book, "123")
    expect(subject.show_members("123")).to be_kind_of(Member)
    subject.return(book, "123")
    expect(subject.show_members("123")).to be_kind_of(Member)
  end

  it "has a book in catalog" do
    cat.add("Book", "Author", 2)
    expect(cat.show(2)).to include(be_a_kind_of(Book))

  end
end