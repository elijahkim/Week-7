class Hotel
  attr_accessor :hotel, :city, :phone_number, :number_of_singles, :number_of_doubles
  def initialize(data)
    @hotel = data["Hotel"]
    @city = data["City"]
    @phone_number = data["Phone Number"]
    @number_of_singles = data["Number of Singles"]
    @number_of_doubles = data["Number of Doubles"]
  end
end
