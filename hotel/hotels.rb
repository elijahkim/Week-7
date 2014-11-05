class Hotel
  attr_accessor :hotel, :city, :phone_number, :number_of_singles, :number_of_doubles
  def initialize(data)
    @hotel = data["Hotel"]
    @city = data["City"]
    @phone_number = data["Phone Number"]
    @number_of_singles = data["Number of Singles"]
    @number_of_doubles = data["Number of Doubles"]
  end

  def attributes
    [:hotel, :city, :phone_number, :number_of_singles, :number_of_doubles]
  end

  def to_s
    puts
    puts "Phone Number: #{self.phone_number}"
    puts "Location: #{self.city}"
    puts "Number of Rooms: #{self.number_of_singles + self.number_of_doubles}"
    puts
  end
end
