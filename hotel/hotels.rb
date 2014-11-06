class Hotel
  attr_reader :name, :city, :phone_number, :number_of_singles, :number_of_doubles

  def initialize(data)
    @name = data["Hotel"].strip
    @city = data["City"]
    @phone_number = Formatter.new(data["Phone Number"]).format_number
    @number_of_singles = Formatter.new(data["Number of Singles"]).clean.to_i
    @number_of_doubles = Formatter.new(data["Number of Doubles"]).clean.to_i
  end

  def number_of_rooms
    number_of_singles + number_of_doubles
  end

  def to_s
    <<-HOTEL

Phone Number: #{phone_number}
Location: #{city}
Number of Rooms: #{number_of_rooms}
    HOTEL
  end
end
