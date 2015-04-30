class Contact
@@contacts = []

  attr_reader(:first_name, :last_name, :birth_month)

  define_method(:initialize) do |first_name, last_name, birth_month|
    @first_name = first_name
    @last_name = last_name
    @birth_month = birth_month
    @id = @@contacts.length + 1
    @addresses = []
    @phone_nums = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:save) do
    @@contacts.push(self)
  end


end
