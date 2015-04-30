require('rspec')
require('contact')

describe(Contact) do

  describe('#first_name') do
    it("returns the first name of a contact") do
      test_contact = Contact.new("Bob", "Ross", 12)
      expect(test_contact.first_name).to(eq("Bob"))
    end
  end
end
