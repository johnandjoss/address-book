require('rspec')
require('address')

describe(Address) do
  before() do
    Address.clear()
  end

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

describe('#save') do
  it("adds address info to the address class array") do
    test_address = Address.new("portland", "oregon", "99383", "home")
    test_address.save()
    expect(Address.all()).to(eq([test_address]))
  end
end


describe('.clear') do
  it("clears address info from memory") do
    Address.new("portland", "oregon", "99383", "home").save()
    Address.clear()
    expect(Address.all()).to(eq([]))
  end
end

describe('#id') do
  it("returns the id of the address contact") do
    test_address = Address.new("portland", "oregon", "99383", "home")
    expect(test_address.id()).to(eq(1))
  end
end

describe('.find') do
  it("returns an address contact by its id number") do
    test_address = Address.new("portland", "oregon", "99383", "home")
    test_address.save()
    test_address2 = Address.new("portland", "oregon", "99383", "home")
    test_address2.save()
    expect(Address.find(test_address.id())).to(eq(test_address))
  end
end
end
