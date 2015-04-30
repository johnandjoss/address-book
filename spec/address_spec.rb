require('rspec')
require('address')

describe(Address) do
  #before() do
  #  Address.clear()
  #end

describe('#initialize', '#attr_reader') do
  it("returns the details of a address ") do
    test_address = Address.new("portland", "oregon", "99383", "home")
    expect(test_address.city).to(eq("portland"))
    expect(test_address.state).to(eq("oregon"))
    expect(test_address.zip).to(eq("99383"))
    expect(test_address.type).to(eq("home"))
  end
end
describe('.all') do
  it("is empty at first") do
    expect(Address.all()).to(eq([]))
  end
end
end
