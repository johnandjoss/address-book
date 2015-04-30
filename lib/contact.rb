class Contact
@@contacts = []

  attr_reader(:first_name, :last_name, :birth_month)

  define_method(:initialize) do |first_name, last_name, birth_month|
    @first_name = first_name
    @last_name = last_name
    @birth_month = birth_month
    @id = @@contacts.length + 1
  end

end
