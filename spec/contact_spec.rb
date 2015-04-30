require('rspec')
require('contact')

describe(Contact) do
  before() do
    Dealership.clear()
  end

  describe('#first_name') do
    it("returns the first name of a contact") do
      test_contact = Contact.new("Bob")
      expect(test_contact.name).to(eq("Bob"))
    end
  end
end
