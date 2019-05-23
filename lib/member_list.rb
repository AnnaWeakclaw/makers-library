class MemberList
  attr_reader :members

  def initialize(member_class = Member)
    @members = []
    @member_class = member_class
  end

  def add(id, name)
    members.push(@member_class.new(id, name))
  end

  def members_by(id)
    members = @members.select { |member| member.id_number == id }
    member = members.first
  end
end
