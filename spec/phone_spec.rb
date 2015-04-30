require('rspec')
require('phone')

describe(Phone) do

  describe('#initialize', '#attr_reader') do
    it("returns the details of a phone number") do
      test_number = Phone.new("503", "7587819", "cell")
      expect(test_number.area_code).to(eq("503"))
      expect(test_number.number).to(eq("7587819"))
      expect(test_number.type).to(eq("cell"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a phone contact to the phone info array") do
      test_number = Phone.new("503", "7587819", "cell")
      test_number.save()
      expect(Phone.all()).to(eq([test_number]))
    end
  end
end
