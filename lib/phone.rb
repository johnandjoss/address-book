class Phone

  @@phone_info = []

  attr_reader(:area_code, :number, :type)

  define_method(:initialize) do |area_code, number, type|
    @area_code = area_code
    @number = number
    @type = type
    @id = @@phone_info.length + 1
  end

  define_singleton_method(:all) do
    @@phone_info
  end
end
