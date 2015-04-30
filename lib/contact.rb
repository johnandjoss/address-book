class Contact

  attr_reader(:first_name)

  define_method(:initialize) do |first_name, last_name, birth_month|
    @first_name = first_name
    @last_name = last_name
    @birth_month = birth_month
    
  end

end
