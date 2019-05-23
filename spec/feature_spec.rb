require 'library'
require 'member'
require 'member_list'

describe 'Feature members of the library' do

subject { Library.new }
let(:member) { Member.new("1", "First") }

  it 'shows me members' do
    subject.add_member("123", "Hero")
    subject.add_member("456", "Monkey")
    expect(subject.show_members("456")).to be_kind_of(Member)
  end

  it "lends a book and returns it" do 
    subject.add_member("123", "Hero")
    subject.add_member("456", "Monkey")
    subject.lend("Book", "123")
    expect(subject.show_members("123")).to be_kind_of(Member)
    subject.return("Book", "123")
    expect(subject.show_members("123")).to be_kind_of(Member)
  end
end