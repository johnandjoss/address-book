require('rspec')
require('contact')

describe(Contact) do

  describe('#first_name') do
    it("returns the first name of a contact") do
      test_contact = Contact.new("Bob", "Ross", 12)
      expect(test_contact.first_name).to(eq("Bob"))
      expect(test_contact.last_name).to(eq("Ross"))
      expect(test_contact.birth_month).to(eq(12))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end
end
