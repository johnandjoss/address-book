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


end
