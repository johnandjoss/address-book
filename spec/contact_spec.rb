require('rspec')
require('contact')
require('pry')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#first_name') do
    it("returns the first name of a contact") do
      test_contact = Contact.new("Ross", "Bob", "12")
      expect(test_contact.first_name).to(eq("Bob"))
      expect(test_contact.last_name).to(eq("Ross"))
      expect(test_contact.birth_month).to(eq("12"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears contacts from memory") do
      Contact.new("Bob", "Ross", "12").save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a contact to the contacts array") do
      test_contact = Contact.new("Bob", "Ross", "12")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe('#id') do
    it("returns the id of the contact") do
      test_contact = Contact.new("Bob", "Ross", "12")
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe('#address', '#phone_nums') do
    it('initially returns empty arrays of addresses and phone numbers for the contacts') do
      test_contact = Contact.new("Bob", "Ross", "12")
      expect(test_contact.addresses()).to(eq([]))
      expect(test_contact.phone_nums()).to(eq([]))
    end
  end

  describe('.find') do
    it("returns a contact by its id number") do
      test_contact = Contact.new("Bob", "Ross", "12")
      test_contact.save()
      test_contact2 = Contact.new("Bob", "Ross", "12")
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
end
