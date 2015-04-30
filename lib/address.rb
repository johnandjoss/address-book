class Address

  @@address_info = []

  attr_reader(:city, :state, :zip, :type)

  define_method(:initialize) do |city, state, zip, type|
    @city = city
    @state = state
    @zip = zip
    @type = type
    @id = @@address_info.length + 1
  end

  define_singleton_method(:all) do
    @@address_info
  end

  define_singleton_method(:clear) do
    @@address_info = []
  end

  define_method(:save) do
    @@address_info.push(self)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_address = nil
    @@address_info.each() do |address|
      if address.id().eql?(id.to_i())
        found_address = address
      end
    end
    found_address
  end
end
