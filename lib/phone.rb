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

  define_singleton_method(:clear) do
    @@phone_info = []
  end

  define_method(:save) do
    @@phone_info.push(self)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |id|
    found_number = nil
    @@phone_info.each() do |phone_number|
      if phone_number.id().eql?(id.to_i())
        found_number = phone_number
      end
    end
    found_number
  end
end
