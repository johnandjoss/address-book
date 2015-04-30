require('rspec')
require('phone')

describe(Phone) do

  describe('#area_code') do
    it("returns the area_code of a phone number") do
      test_number = Phone.new("503", "7587819", "cell")
      expect(test_contact.area_code).to(eq("503"))
      expect(test_contact.number).to(eq("7587819"))
      expect(test_contact.type).to(eq("cell"))
    end
  end
end
