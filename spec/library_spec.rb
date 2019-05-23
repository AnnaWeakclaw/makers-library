require "library"

describe Library do
  subject(:library) { described_class.new(member_list_class) }
  let(:member_details_dbl) { double(:member_details_dbl, check_out: nil, return_item: nil) }
  let(:member_list_class) { double(:member_list_class, :new => member_list) }
  let(:member_list) { double(:member_list, members_by: member_details_dbl) }
  
  describe "add_member" do
    it("tells the member list to add a member") do
      expect(member_list).to receive(:add)
      library.add_member("12345", "Bananaman")
    end
  end

  describe "show me my members:" do
    it "displays memebrs" do
      expect(member_list).to receive(:members_by)
      library.show_members("123")
    end

    it "lends a book to a member" do
      expect(member_list).to receive(:members_by)
      library.lend("book", "123")
    end

    it "accepts returned book" do
      expect(member_list).to receive(:members_by)
      library.return("book", "123")
    end
  end
end
