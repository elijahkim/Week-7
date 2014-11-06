class Hotel
  attr_reader :name, :city, :phone_number, :number_of_singles, :number_of_doubles

  def initialize(data)
    @name = data["Hotel"].strip
    @city = data["City"]
    @phone_number = format_number(data["Phone Number"])
    @number_of_singles = clean(data["Number of Singles"]).to_i
    @number_of_doubles = clean(data["Number of Doubles"]).to_i
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

  private

  def clean(data)
    data.gsub(/[\D]+/, "")
  end

  def format_number(data)
    number = clean(data)
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
end
