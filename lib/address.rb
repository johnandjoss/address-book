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


end
